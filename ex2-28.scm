
(define null ())

(define (fringe tree)
  ;; null necessary since cdr will return empty list
  ;; NOTE: I tried using an if
  (cond ((null? tree) null)
        ((pair? tree) (append (fringe (car tree))
                              (fringe (cdr tree))))
        (else (list tree))))

;; check
(define x (list (list 1 2) (list 3 4)))

(fringe x)
;Value (1 2 3 4)

(fringe (list x x))
;Value: (1 2 3 4 1 2 3 4)

