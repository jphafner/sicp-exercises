
(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "Argument not 0 or 1 - CONS" m)))) dispatch)

(define (car z) (z 0))
(define (cdr z) (z 1))

;ex2-04
(define (cons x y)
  (lambda (m) (m x y)))
(define (car z)
  (z (lambda (p q) p)))
(define (cdr z)
  (z (lambda (p q) q)))

(car (cons 2 4))
;Value: 2
(cdr (cons 2 4))
;Value: 4

