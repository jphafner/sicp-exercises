

;; this is equivalent to ex1-11
(define phi
     (/ (+ 1 (sqrt 5)) 2))
(define the
     (/ (- 1 (sqrt 5)) 2))

(define (ex1-13 n)
  (/ (- (expt phi n) (expt the n)) (sqrt 5)))


