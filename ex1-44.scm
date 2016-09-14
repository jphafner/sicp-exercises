
(define (square x) (* x x))
(define (average a b) (/ (+ a b) 2))

(define (compose f g) 
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (recurse f k)
    (if (= k n)
      f
      (compose f (recurse f (+ k 1)))))
  (recurse f 1))

(define (smooth f)
  (lambda (x) (average (f ((- x dx))) (f ((+ x dx))) )))

;; ex1.44
;; n-fold smoothed function
;((repeated smooth n) f)

