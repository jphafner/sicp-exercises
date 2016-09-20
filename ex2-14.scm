
;; text definitions
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y )))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x (make-interval (/ 1.0 (upper-bound y)) (/ 1.0 (lower-bound y)))))

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


;; text definitions
(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one (add-interval (div-interval one r1)
                                    (div-interval one r2)))))

;; ex2-14
(par1 (make-interval 2.5 1) (make-interval 3.5 1))
;Value 13: (.16666666666666666 . 4.375)
(par2 (make-interval 2.5 1) (make-interval 3.5 1))
;Value 14: (.5 . 1.4583333333333333)


