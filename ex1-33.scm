
;; filtered-accumulate
(define (filtered-accumulate test combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((test a) (combiner (term a) (filtered-accumulate test combiner null-value term (next a) next b)))
        (else (combiner null-value (filtered-accumulate test combiner null-value term (next a) next b)))))

(define (square x) (* x x))
(define (cube x) (* x x x))
(define (identity x) x)
(define (inc x) (+ x 1))

;; part A
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
    (= (remainder b a) 0))
(define (prime? n)
  (= n (smallest-divisor n)))

(define (partA a b) 
  (filtered-accumulate prime? + 0 square a inc b))
(display "(partA 1 10)")
(partA 1 10)


;; part B
(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

(define (partB n)
  (define (coprime? a)
    (= 1 (gcd a n)))
  (filtered-accumulate coprime? * 1 identity 3 inc n))
(display "(partB 5)")
(partB 10)

