
;; define multiplication with addition
(define (mult a b)
  (if (= b 0)
    0
    (+ a (mult a (- b 1)))))


;; fast-expt for reference
(define (even? n)
  (= (remainder n 2) 0))

(define (square a)
  (* a a))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n)  (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

;; solve for 1.17
(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))


(define (new-mult a b)
  (if (= b 0)
    0
    (+ a (new-mult (double a) (halve b)))))


