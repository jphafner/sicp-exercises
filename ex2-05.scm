

;; TODO: finish this

;; 2^a 3^b
(define (make-integer a b)
  (cons a b))

(define (multiply a b)
  (make-integer (+ (cons a) (cons b)) (+ (cdr a) (cdr b))))

(define (addition a b)
  (make-integer (+ (cons a) (cons b)) (+ (cdr a) (cdr b))))


;; ex2-05
(define (cons a b) (* (expt 2 a) (expt 3 b)))
;; TODO: car and cdr need some expoential math
(define (car z) (+ (/ z 2) (remainder z 2)))
(define (cdr z) (+ (/ z 3) (remainder z 3)))
;(define (car z) (+ (integer-divide-quotient z 3) (integer-divide z 3))
;(define (cdr z) (+ (integer-divide-quotient z 3) (integer-divide z 3))

(display (car 312))
(display (cdr 312))
(display (cons (car 312) (cdr 312)))

