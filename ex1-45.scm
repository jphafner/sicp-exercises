
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

(define (compose f g) 
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (recurse f k)
    (if (= k n)
      f
      (compose f (recurse f (+ k 1)))))
  (recurse f 1))

(define (average a b)
  (/ (+ a b) 2))
(define (cube x) (* x x x))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (nth-root x n k)
  (fixed-point (repeated (average-damp (lambda (y) (/ x (expt y n)))) k)
               1.0))


;; TODO: finish testing program!!

;; ex1-45
(nth-root 10 2 2)
(nth-root 10 3 2)
(nth-root 10 4 2)
(nth-root 10 5 2)
(nth-root 10 6 2)
(nth-root 10 7 2)

(nth-root 10 2 3)
(nth-root 10 3 3)
(nth-root 10 4 3)
(nth-root 10 5 3)
(nth-root 10 6 3)
(nth-root 10 7 3)


