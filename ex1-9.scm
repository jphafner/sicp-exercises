
(define (inc a)
  (+ a 1))

(define (dec a)
  (- a 1))
    

(define (recursive a b)
  (if (= a 0)
    b
    (inc (recursive (dec a) b))))


(define (iterative a b)
  (if (= a 0)
    b
    (iterative (dec a) (inc b))))


