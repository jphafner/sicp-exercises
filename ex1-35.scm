
; find x: a<x<b,  such that f(x)=0, given f(a)<0<f(b)
(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
      midpoint
      (let ((test-value (f midpoint)))
        (cond ((positive? test-value)
               (search f neg-point midpoint))
              ((negative? test-value)
               (search f midpoint pos-point))
              (else midpoint))))))

;(define (average . numbers)
;  (/ (apply + numbers) (length numbers)))
(define (average a b)
  (/ (+ a b) 2))
(define (close-enough? x y)
  (< (abs (- x y) 0.001)))
(define (negative? x)
  (< x 0))
(define (positive? x)
  (> x 0))

(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
           (search f a b))
          ((and (negative? b-value) (positive? a-value))
           (search f b a))
          (else
            (error "Values are not of opposite sign" a b)))))

;(half-interval-method (lambda (x) (- (* 2 x x) (* -4 x))) 2.0 4.0)
;(half-interval-method (lambda (x) (cos x)) 2.0 4.0)
;(half-interval-method (lambda (x) (- (* x x x) (* 2 x) 3)) 1.0 2.0)

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
        next
        (try next))))
  (try first-guess))

(fixed-point cos 1.0)
(fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)

;; ex1-35 solution
(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
;; this prints 1.6180327868

;; golden number = (\sqrt{5}+1)/2.0 = 1.618033988749895


