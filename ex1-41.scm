
(define (double f)
  (lambda (x) (f (f x))))

(define (inc x)
  (+ x 1))

((double inc) 5)
; (inc (inc 5))
; (inc 6)
; 7

(((double (double double)) inc) 5)
; TODO: expand
;Value: 21


