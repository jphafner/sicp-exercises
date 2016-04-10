

;; Newton's method of sqrt
(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y)
  (/ (+ x y) 2))


(define (square x)
  (* x x))


;; remake good-enough?
(define (good-enough? guess old-guess)
  (< (abs (/ (- guess old-guess) guess)) 0.001))


;; change to include old-guess
(define (sqrt-iter old-guess guess x)
  (if (good-enough? guess old-guess) guess
      ;; note that guess is now old-guess
      (sqrt-iter guess (improve guess x) x)))


(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))
 

;;(sqrt 10)
;;(display (sqrt 10))
;;(display ("\n"))


