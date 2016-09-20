
;; TODO: finish this
(define (last-pair a)
  (if (null? (cdr a))
    (car a)
    (last-pair (cdr a))))

(define (reverse a)
  (define (loop a b)
    (if (null? cdr a)
      (append b (last-pair a))
      (loop (append b (last-pair (cdr a)))))
  (loop a (list ) ))


(reverse (list 1 4 9 16 25))
