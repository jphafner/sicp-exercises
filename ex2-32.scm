

(define nil ())

;; TODO: try to explain why in words
(define (subsets s)
  (if (null? s)
    (list nil)
    (let ((rest (subsets (cdr s))))
      (append rest (map (lambda (x) (cons (car s) x))
                        rest)))))

(subsets (list 1 2 3))
;Value: (() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))

