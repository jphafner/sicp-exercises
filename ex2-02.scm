

(define (make-segment start end)
  (cons start end))

(define (start-segment p)
  (car p))

(define (end-segment p)
  (cdr p))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (average a b)
  (/ (+ a b) 2))

(define (midpoint-segment s)
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

