
;; from internet
;; this problem stumped me more than most
(define (reverse items)
  (if (null? items)
    items
    (append (reverse (cdr items)) (list (car items)))))

(reverse (list 1 4 9 16 25))
;Value: (25 16 9 4 1)

