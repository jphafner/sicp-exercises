
;; from HINT
;; 1.2.2 Tree Recursion
;(define (fib n)
;  (fib-iter 1 0 n))

;; a <- a + b
;; b <- a
;(define (fib-iter a b count)
;  (if (= count 0)
;    b
;    (fib-iter (+ a b) a (- count 1))))

;; from ex1-17.scm
(define (even? n)
  (= (remainder n 2) 0))

(define (square a)
  (* a a))

(define (double a)
  (* a 2))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n)
         (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

;; start ex1-19
(define (fib n)
  (fib-iter 1 0 0 1 n))

;; a <- bq + aq + ap
;; b <- bp + aq
(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   ;; solve for ex1-19
                   (+ (square p) (square q)) ; comput p'
                   (+ (* 2 p q)  (square q)) ; comput q'
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

