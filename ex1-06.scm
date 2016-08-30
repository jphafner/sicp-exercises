

;; Newton's method of sqrt
(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y)
  (/ (+ x y) 2))


(define (square x)
  (* x x))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess
      (sqrt-iter (improve guess x) x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))
 

;; New functions
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x) guess
          (new-sqrt-iter (improve guess x) x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))
 
;;(sqrt 10)
;;(display (sqrt 10))
;;(display ("\n"))


