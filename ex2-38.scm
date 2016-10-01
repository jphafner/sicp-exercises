
;; see accumulate
(define (fold-right op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (fold-right op initial (cdr sequence)))))


(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
            (cdr rest))))
  (iter initial sequence))

;; ex2-38
(fold-right / 1 (list 1 2 3))
;Value: 3/2
(fold-left / 1 (list 1 2 3))
;Value: 1/6

(define nil ())
(fold-right list nil (list 1 2 3))
;Value: (1 (2(3 ())))
(fold-left list nil (list 1 2 3))
;Value: (((() 1) 2) 3)


;; if the operator is commutative, then fold-right and fold-left are identical

