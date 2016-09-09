
;; accumulator recursive
(define (accumulate combiner null-value term a next b)
    (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

;; accumulator iterative
(define (accumulate combiner null-value term a next b)
  (define (a-iter a num)
    (if (> a b)
      num
      (a-iter (next a) (combiner (term a) num))))
  (a-iter a null-value))

(define (prod term a next b) (accumulate * 1 term a next b))
(define (sum term a next b) (accumulate + 0 term a next b))
(define (cube x) (* x x x))
(define (identity x) x)
(define (inc x) (+ x 1))

;; test program
(display "(sum cube 0 inc 3)")
(sum cube 1 inc 3)
(display "(prod cube 0 inc 3)")
(prod cube 1 inc 3)


