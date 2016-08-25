
;; simple exponentiation
(define (expt-iter b counter product)
  (if (= counter 0)
    produce
    (expt-iter b (- counter 1) (* b product))))

(define (expt b n)
  (expt-iter b n 1))


;; Note: b^n = (b^{n/s})^2    if n is even
;;       b^n = b (b^{n-1})    if n is odd
(define (even? n)
  (= (remainder n 2) 0))

(define (square a)
  (* a a))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n)  (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

;; NOTE: a b^n is constant
(define (new-fast-expt b n) 
        (fast-iter 1 b n)) 
  
(define (fast-iter a b n)
  (cond ((= n 0) a)
        ;; a b^n = a (b^2)^{n/2} if even
        ((even? n) (fast-iter a (square b) (/ n 2)))
        ;; a b^n = a b (b^{n-1} if odd
        (else (fast-iter (* a b) b (- n 1)))))

