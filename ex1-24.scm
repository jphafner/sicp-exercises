

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

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (floor (random (- n 1))))))

(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else #f)))


;; start problem

;; timed first num primes starting at n
(define (search-for-num-primes n num)
  ;(define start-time (runtime))
  (search-iter n num 0)
  (newline)
  ;(display "Runtime: ")
  ;(display (- (runtime) start-time))
  (display " seconds")
  #t)

(define (search-iter n num count)
  (cond 
    ((= num count) #t )
    ((even? (floor n))
     (display "even")
     (search-iter (+ n 1) num count))
    ((fast-prime? (floor n) 4)
     (display "Prime: ")
     (display n)
     (newline)
     (search-iter (+ n 1) num (+ count 1)))
    (else (search-iter (+ n 1) num count))))


