
(define (double f)
  (lambda (x) (f (f x))))

(define (inc x) (+ x 1))
(define (square x) (* x x))

(define (compose f g) 
  (lambda (x) (f (g x))))

((compose square inc) 6)
; ((compose square inc) 6)
; (square (inc 6))
; (square 7)
; 49

