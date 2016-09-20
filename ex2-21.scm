
(define nil ())

(define (square x) (* x x))

;; ex2-21
(define (square-list items)
  (if (null? items)
    nil
    (cons (square (car items))
          (square-list (cdr items)))))

(square-list (list 2 4 8 16 32))
;Value: (4 16 64 256 1024)

(define (square-list items)
  (map square items))

(square-list (list 2 4 8 16 32))
;Value: (4 16 64 256 1024)


