
(define (square x) (* x x))

(define (compose f g) 
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (recurse f k)
    (if (= k n)
      f
      (compose f (recurse f (+ k 1)))))
  (recurse f 1))

((repeated square 2) 5)
; (square (square) 5)
; (square 25)
; 625


