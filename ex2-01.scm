
;(define (linear-combination a b x y)
;  (+ (* a x) (* b y)))

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

;; definitions
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

;; operations
(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (mul-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (numer x) (denom y))))
(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (denom y))))
(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (denom x) (denom y))))

;; print command
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


;; START ex2-01
(define (sign x)
  (cond ((< x 0) -1)
        ((> x 0) +1)
        (else 0)))

;; NOTE: TODO: could this be made more efficient based on output from gcd??
(define (make-rat n d)
  (let ((g (abs (gcd n d))))
    (if (< d 0)
      (if (< n 0)
        (cons (/ (* -1 n) g) (/ (* -1 d) g))
        (cons (/ n g) (/ d g)))
      (cons (/ n g) (/ d g)))))

(define one-half (make-rat -1 -2))
(print-rat one-half)
(define one-third (make-rat 1 -3))
(print-rat (add-rat one-half one-third))
(print-rat (add-rat one-third one-third))

