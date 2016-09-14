
(define (average a b)
  (/ (+ a b) 2))
(define (cube x) (* x x x))

(define (average-damp f)
  (lambda (x) (average x (f x))))

((average-damp square) 10)

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

(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
               1.0))


(define (cube-root x)
  (fixed-point (average-damp (lambda (y) (/ x (square y))))
               1.0))

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define dx 0.00001)

((deriv cube) 5)

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x))
                  1.0))


(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))


(define (sqrt x)
  (fixed-point-of-transform (lambda (y) (/ x y))
                            average-damp
                            1.0))


;; ex1-40
(define (cubic a b c)
  (lambda (x)
    (+ (cube x) (* a (square x)) (* b x) c)))

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


;; ex1-45




