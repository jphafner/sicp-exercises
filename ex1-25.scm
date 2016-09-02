

;; this gives a floating point overflow

(define (even? n)
  (= (remainder n 2) 0))

(define (square a)
  (* a a))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n)  (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (floor (random (- n 1))))))

(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else #f)))


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
    ((fast-prime? (floor n) 4)
     (display "Prime: ")
     (display n)
     (newline)
     (search-iter (+ n 1) num (+ count 1)))
    (else (search-iter (+ n 1) num count))))

