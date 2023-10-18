#lang racket
(require "base.rkt"
         "template.rkt")
(require
  data/order
  json
  net/http-easy
  racket/pretty
  xml)

;;
;; json->tree :: JSON object (as native Racket data typeS)
;;
;; Returns a list of Endpoint structures.
(define (json->tree json)
  ;; (printf "~nTREE:~n-----~n~a~n-----~n" json)
  
  (for/list ([(endpoint properties) (hash-ref json 'definitions)])
    (Endpoint (symbol->string endpoint)
              (hash-ref properties 'description (empty-string))
              (filter Field?
                      (for/list ([(field-name field-properties) (hash-ref properties 'properties)])
                        (when (hash? field-properties)
                          (Field (symbol->string field-name)
                                 (hash-ref field-properties 'description (empty-string))
                                 (hash-ref field-properties 'type (empty-string))
                                 (hash-ref field-properties 'format (empty-string))
                                 (hash-ref field-properties 'max-length (empty-string)))))))))

;;
;; process-file-or-url :: url filename
;;
;; Consumes a JSON OpenAPI spec (either as a URL or a file in the filesystem)
;; and returns a representation of that JSON object as native Racket data structures
;;
(define (process-file-or-url url
                             json-file
                             #:input-directory input-directory
                             #:api-version api-version
                             #:jwt-token jwt-token
                             #:api-key api-key
                             )
  (cond
    [json-file
     (define fp (open-input-file (build-path
                                  input-directory
                                  json-file)))
     (read-json fp)]
    [url
     (define headers (make-hash))
     (when api-version
       (hash-set! headers 'Accept-Profile api-version))
     (when jwt-token
       (hash-set! headers 'Authorization (format "Bearer ~a" jwt-token)))
     (when api-key
       (hash-set! headers 'X-API-Key api-key))

     ;; (printf "Headers: ~a" headers)
     
     (define res (get url #:headers (hash->immutable-hash headers)))
     
     (cond
       [(= 200 (response-status-code res))
        'continue]
       [(= 400 (response-status-code res))
        (printf "Bad response: 400~n")
        (printf (response-body res))
        (exit 1)])
     
     (define body (response-body res))
     (response-close! res)
     (with-input-from-string (bytes->string/utf-8 body)
       (λ () (read-json)))]))

(define (write-documentation-to-html #:title title
                                     #:version version
                                     #:document assembled-document
                                     #:input-directory input-directory
                                     #:output-directory output-directory
                                     #:destination-filename destination-filename
                                     #:template-filename [template-filename false])

  
  (define outfp (open-output-file (build-path
                                   output-directory
                                   destination-filename) #:mode 'text #:exists 'replace))
  


  (cond
    [template-filename
     (define templatep (open-input-file (build-path
                                         input-directory
                                         template-filename)))
     (display "<!DOCTYPE html>" outfp)
     (for ([line (port->lines templatep)])
       (cond
         [(regexp-match "<!-- TITLE -->" line)
          (displayln (format title version) outfp)]
         [(regexp-match "<!-- NAV -->" line)
          (displayln (format title version) outfp)]
         [(regexp-match "<!-- MAIN -->" line)
          (display-xml/content (xexpr->xml assembled-document)
                               outfp
                               #:indentation 'classic)]
         [else (displayln line outfp)]))]
    [else
     (display-xml/content (xexpr->xml assembled-document)
                          outfp
                          #:indentation 'classic)])

  
  (close-output-port outfp)
  )

;;
;; process-openapi
;;
;; 
(define (process-openapi #:url url
                         #:file json-file
                         #:title [title "FAC API version ~a documentation"]
                         #:version [version "1.0.0"]
                         #:destination-filename destination-filename
                         #:template-filename template-filename
                         #:input-directory input-directory
                         #:output-directory output-directory
                         #:api-version api-version
                         #:jwt-token [jwt-token false]
                         #:api-key [api-key false]
                         )

  ;; Takes a file or URL for an OpenAPI JSON spec
  ;; and turns it into a list of Endpoint objects.
  (define json (process-file-or-url url
                                    json-file
                                    #:input-directory input-directory
                                    #:api-version api-version
                                    #:jwt-token jwt-token
                                    #:api-key api-key
                                    ))
  (define tree (json->tree json))

  ;; Assembles the tree of documentation that will
  ;; then be embedded into the template.
  (define full
    (render #:endpoints tree
            #:title title
            #:version version))
  
  (define body
    (render-body #:endpoints tree
                 #:title title
                 #:version version
                 ))

  (define nav
    (render-nav #:endpoints tree
                #:title title
                #:version version
                ))

  
  ;; Embeds content into the template and writes it out to a file.
  (write-documentation-to-html #:document full
                               #:title title
                               #:version version
                               #:destination-filename (format "~a.html" destination-filename)
                               #:template-filename template-filename
                               #:input-directory input-directory
                               #:output-directory output-directory)
  
  (write-documentation-to-html #:document body
                               #:title title
                               #:version version
                               #:destination-filename (format "~a-body.html" destination-filename)
                               #:input-directory input-directory
                               #:output-directory output-directory)
  (write-documentation-to-html #:document nav
                               #:title title
                               #:version version
                               #:destination-filename (format "~a-nav.html" destination-filename)
                               #:input-directory input-directory
                               #:output-directory output-directory)
    
  )

;; Need to provide this for the submod below.
(provide process-openapi)

;; The CLI module makes composing the
;; command-line interface straight-forward.
(module* main cli
  (require (submod ".."))
  (require "base.rkt")

  ;; If they user doesn't provide these, we will.
  (define default-destination "api-documentation")
  (define default-template "template.html")
  (define default-output-directory ".")
  (define default-input-directory ".")

  
  (flag (openapi-url url)
        ("-u" "--url" "OpenAPI URL")
        (openapi-url url))

  (flag (openapi-file fname)
        ("-f" "--file" "OpenAPI file (JSON)")
        (openapi-file fname))

  (flag (destination-file fname)
        ("-o" "--outfile" "Output filename base")
        (destination-file fname))

  (flag (template-file tfname)
        ("-t" "--template" "Template filename")
        (template-file tfname))

  (flag (output-directory od)
        ("-d" "--output-directory" "Output directory")
        (output-directory od))
  (flag (input-directory id)
        ("-i" "--input-directory" "Input directory")
        (input-directory id))


  (flag (api-version apiv)
        ("-a" "--api-version" "API version")
        (api-version apiv))

  (flag (jwt-token jwt)
        ("-j" "--jwt-token" "JWT Token")
        (jwt-token jwt))

  (flag (api-key apikey)
        ("-k" "--api-key" "api.data.gov key")
        (api-key apikey))
  
  (program (openapi-to-uswds)
           (cond
             [(or (openapi-file) (openapi-url))
              (process-openapi
               #:url (openapi-url)
               #:file (openapi-file)
               #:version (or (api-version) (get-metadata (openapi-url) (api-version) "version" #:default "1.0.0")) 
               #:destination-filename (or (destination-file) default-destination)
               #:template-filename (or (template-file) default-template)
               #:output-directory (or (output-directory) default-output-directory)
               #:input-directory (or (input-directory) default-input-directory)
               #:api-version (api-version)
               #:jwt-token (jwt-token)
               #:api-key (api-key)
               )]
             [else
              (printf "You must provide an OpenAPI spec, either as a filename or URL. Exiting.~n")])
           )
  
  (run openapi-to-uswds))
