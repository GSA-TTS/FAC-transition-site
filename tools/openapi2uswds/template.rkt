#lang racket
(require "base.rkt"
         gregor)
(provide render)

(provide (all-defined-out))

(define (render #:endpoints [endpoints '()]
                ;;#:definitions [definitions (hash)]
                #:title title
                #:version version
                )
  ` (div ([class "usa-section "])
         (div ([class "grid-row grid-gap"])
              (div ([class "grid-col-2 margin-bottom-4 tablet:margin-bottom-0 padding-2"])
                   (h2 ([class "padding-1"])
                       "Endpoints")
                   ,(endpoints->sidenav (endpoints-in-order endpoints))
                   (p ([class "padding-1"])
                      (em
                       ,(format "Last renedered ~a" (~t (today #:tz "America/New_York")
                                                        "E, MMMM d, y"))
                       )))
              (main ([class "desktop:grid-col-10 usa-prose usa-layout-docs__main"] ;;   usa-layout-docs
                     [id "main-content"])
                    (h1 ,(format title version))
                    (h2 ([id "api-endpoints"])
                        "API endpoints")
                    ,(render-endpoints (endpoints-in-order endpoints))
                    ))
         ))

(define (render-body #:endpoints [endpoints '()]
                ;;#:definitions [definitions (hash)]
                #:title title
                #:version version
                )
  `(main ([class "usa-prose usa-layout-docs__main"] ;;   usa-layout-docs
          [id "main-content"])
         ,(render-endpoints (endpoints-in-order endpoints))
         ))

(define (render-nav #:endpoints [endpoints '()]
                ;;#:definitions [definitions (hash)]
                #:title title
                #:version version
                )
  (endpoints->sidenav (endpoints-in-order endpoints)))

;;;;;

(define (->s o)
  (cond
    [(empty-string? o) ""]
    [else
     (~a o)]))

;;
;; Navigation
;;
(define (endpoints->index endpoints)
  `(ul
    ,@(for/list ([endpoint endpoints])
        `(li (a ([href ,(format "#endpoint-~a" (Endpoint-name endpoint))])
                ,(~a (Endpoint-name endpoint)))))))

(define (endpoints->sidenav endpoints)
  `(nav ([aria-label "Side navigation"])
        (ul ([class "usa-sidenav"])
            ,@(for/list ([endpoint endpoints])
                `(li ([class "usa-sidenav__item"])
                     (a ([href ,(format "#endpoint-~a" (Endpoint-name endpoint))])
                        ,(->s (Endpoint-name endpoint))))))))


(define (render-endpoints endpoints)
  (define column-widths '(5 2 0 5))
  (define (grid-col ndx)
    (~a (format "grid-col-~a" (list-ref column-widths ndx))))
    
  (define pieces
    (for/list ([endpoint endpoints]
               [ndx (length endpoints)])
      (define toggle-target (format "accordion-endpoint-~a" ndx))
      `(div
        (a ([name ,(format "endpoint-~a" (Endpoint-name endpoint))]))
        ;; Endpoint name
        (h3 ,(->s (Endpoint-name endpoint)))
        ;; Collapse the parameters
        (h4 ([class "usa-accordion__heading"]
             )
            (button ([type "button"]
                     [class "usa-accordion__button"]
                     [aria-expanded "false"]
                     [aria-controls ,toggle-target]
                     )
                    ,(->s (format "Query params on the ~a endpoint"
                                 (Endpoint-name endpoint)
                                 ))))
        (div ([id ,toggle-target]
              [class "usa-accordion__content usa-prose"])
             (p ,(->s (Endpoint-description endpoint)))
             (h3 "Fields")
             (div ([class "grid-row"])
                  (div ([class ,(grid-col 0)]) "Field name")
                  (div ([class ,(grid-col 1)]) "Type")
                  ;; (div ([class ,(grid-col 2)]) "Format")
                  (div ([class ,(grid-col 3)]) "Description"))
             ,@(for/list ([field (fieldnames-in-order (Endpoint-fields endpoint))])
                 `(div ([class "grid-row"])
                       (div ([class ,(grid-col 0)])
                            (h4 ,(->s (Field-name field))))
                       (div ([class ,(grid-col 1)])
                            (br)
                            (span ([class "usa-tag"])
                                  ,(->s (Field-type field))))
                       #;(div ([class ,(grid-col 2)])
                            ,(->s (Field-format field)))
                       (div ([class ,(grid-col 3)])
                            (p ,(->s (Field-description field)))))
                 )))))

  `(div ([class "usa-accordion padding-4"])
        ,@pieces
        ))
