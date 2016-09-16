

(define (make-rectangle ll ur)
  (cons ll ur))

(define (lower-left r)
  (car r))

(define (upper-right r)
  (cdr r))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (width r)
  (- (x-point (upper-right r)) (x-point (lower-left r)) ))

(define (height r)
  (- (y-point (upper-right r)) (y-point (lower-left r)) ))

(define (average a b)
  (/ (+ a b) 2))

(define (midpoint-segment r)
  (make-point
    (average (x-point (start-segment s)) (x-point (end-segment s)))
    (average (y-point (start-segment s)) (y-point (end-segment s)))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(print-point (make-point 20 10))
(print-point (make-point 4.5 6.75))

;; ex2-02
(define (perimeter r)
  (* 2 (+ (height r) (width r))))

(define (area r)
  (* (height r) (width r)))

;; Alternative implementation could be lower-left is cdr

;; NOTE: TODO: generalize procedures so lower-left can be either car or cdr

