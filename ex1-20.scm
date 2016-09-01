
;(declare (gcd))

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))


;; Lame's Theorem
;; if Euclid's Algorithm requires $k$ steps to computer the GCD of some pair,
;; then the smaller numbe rin the pair must be greater than or equal tot he $k^{th}$ Fibonacci number

;(gcd 206 40)
;$1 = 2


