#lang racket
(require racket/generator
         net/http-easy
         json)

(provide (all-defined-out))


(struct Endpoint (name description fields)
  #:transparent)
(struct Field (name description type format max_length)
  #:transparent)
(struct empty-string ())


(define (endpoints-in-order loe)
  (sort loe (lambda (a b) (string<?
                           (Endpoint-name a)
                           (Endpoint-name b)))))

(define (fieldnames-in-order lof)
  (sort lof (lambda (a b) (string<?
                           (Field-name a)
                           (Field-name b)))))

;;; Contract: (-> hash? (and/c hash? immutable?))
(define (hash->immutable-hash table)
  (if (immutable? table) 
      table ;; If hash is already immutable, just return it
      (for/hash ([(k v) (in-mutable-hash table)]) (values k v))))

(define (get-metadata url api-version key #:default [default "unknown"])
  (define headers (make-hash))
  (when api-version
    (hash-set! headers 'Accept-Profile api-version))
  (define res (get (format "~a/metadata?key=eq.~a" url key) #:headers (hash->immutable-hash headers)))
  (define arr (bytes->jsexpr (response-body res)))
  (define h (cond [(empty? arr) (make-hash)] [(list? arr) (first arr)] [else (make-hash)]))
  (hash-ref h 'value default))
