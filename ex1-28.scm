

(define (square a)
  (* a a))
(define (even? n)
  (= (remainder n 2) 0))

;; Section 1.2.6
(define (expmod base exp m)
  (cond ((= exp 0) 1 )
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (newline)
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

;; finish miller-rabin-test
(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (floor (random (- n 1))))))

(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((miller-rabin-test n) (fast-prime? n (- times 1)))
        (else #f)))


