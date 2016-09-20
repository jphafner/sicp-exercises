
;; ex2-07
(define (make-interval a b) (cons a b))

(define (lower-bound x)
  (if (< (car x) (cdr x))
    (car x)
    (cdr x)))

(define (upper-bound x)
  (if (> (car x) (cdr x))
    (car x)
    (cdr x)))

;; ex2-11
(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))


;; ex2-12
(define (make-center-percent c p)
  (make-interval (- c (* c p)) (+ c (* c p))))

;; ex2-13
(define (mul-interval a b)
  (let ((this (* (center a) (center b))))
  (make-interval
    ;; NOTE: this is the full expansion, you can drop the outer most term
    (+ (* this (- 1 (* 0.5 (+ (width a) (width b))) )) (* 0.25 (width a) (width b)))
    (+ (* this (+ 1 (* 0.5 (+ (width a) (width b))) )) (* 0.25 (width a) (width b)))
    )))

