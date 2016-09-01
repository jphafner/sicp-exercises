

;; from ex1-17.scm
(define (square a)
  (* a a))


;; from ex1-21
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (next n)
  (cond ((< n 3) (+ n 1))
        (else (+ n 2))))

(define (divides? a b)
    (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


;; from exercise 1.22
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))


;; start problem
(define (even? n)
  (= (remainder n 2) 0))

(define (search-for-primes start end)
  (if (even? start)
    (search-for-primes (+ start 1) end)
    (cond ((< start end) (timed-prime-test start)
                         (search-for-primes (+ start 2) end)))))

;; time entire solution
(define (timed-search-for-primes start end)
  (define start-time (runtime))
  (search-for-primes start end)
  (newline)
  (display "Runtime: ")
  (display (- (runtime) start-time))
  (display " seconds"))


;; timed first num primes starting at n
(define (search-for-num-primes n num)
  (define start-time (runtime))
  (search-iter n num 0)
  (newline)
  (display "Runtime: ")
  (display (- (runtime) start-time))
  (display " seconds")
  #t)

(define (search-iter n num count)
  (cond ((= num count) #t )
    ((even? n)
     (search-iter (+ n 1) num count))
    ((prime? n)
     (display "Prime: ")
     (display n)
     (newline)
     (search-iter (+ n 1) num (+ count 1)))
    (else (search-iter (+ n 1) num count))))


