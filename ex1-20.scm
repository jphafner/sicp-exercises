

;; NOTE logarithmic growth
(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

;; Lame's Theorem
;; if Euclid's Algorithm requires $k$ steps to computer the GCD of some pair,
;; then the smaller numbe rin the pair must be greater than or equal tot he $k^{th}$ Fibonacci number


;(gcd 206 40)
;$1 = 2


;; normal-order
(gcd 206 40)
(if (= 40 0) 206 (gcd 40 (remainder 206 40)))
(gcd 40 (remainder 206 40))
(if (= (remainder 206 40) 0) a (gcd 40 (remainder 40 (remainder 206 40))))


;; applicative-order
(gcd 206 40)
(if (= 40 0) 206 (gcd 40 (remainder 206 40)))
(if (= 40 0) 206 (if (= b 0) a (gcd b (remainder a b))))

(define (gcd a b) (if (= b 0) a (gcd b (remainder a b))))


