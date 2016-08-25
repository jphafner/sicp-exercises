

;; Newton's method of sqrt
(define (improve guess x)
  (/  (+ (/ x (square guess)) (* 2 guess)) 3) )
;; I originally misread the textbook as (cube guess),
;;  hence the added cube function
;; that does not work!! it should be (square guess)


(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))


;; remake good-enough?
(define (good-enough? guess old-guess)
  (< (abs (/ (- guess old-guess) guess)) 0.001))


;; change to include old-guess
(define (cube-root-iter old-guess guess x)
  (if (good-enough? guess old-guess) guess
      (cube-root-iter guess (improve guess x) x)))


(define (cube-root x)
  (cube-root-iter 0.0 1.0 x))
 


