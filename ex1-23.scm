
;; from ex1-17.scm
(define (square a)
  (* a a))


;; from 1.2.6
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

;; next function that skips even numbers
(define (next a)
  (if (> a 2) a (+ a 2))

(define (divides? a b)
    (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


