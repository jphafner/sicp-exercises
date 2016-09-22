
;; ex2-20
(define (odd? x)
  (= (modulo x 2) 0))

(define (same-parity g . w)
  (define (loop a b)
    (if (null? (cdr b))
      (if (eqv? (odd? g) (odd? (car b)))
        (append a (list (car b)))
        a)
      (if (eqv? (odd? g) (odd? (car b)))
        (loop (append a (list (car b))) (cdr b))
        (loop a (cdr b)))))
      (loop (list g) w))

(same-parity 1 2 3 4 5 6 7)
;Value: (1 3 5 7)

(same-parity 2 3 4 5 6 7)
;Value: (2 4 6)

