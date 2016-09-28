
;; ex2-31
(define (square x) (* x x))
(define null ())

(define (tree-map proc tree)
  (cond ((null? tree) null)
        ((pair? tree) (cons
                        (tree-map proc (car tree))
                        (tree-map proc (cdr tree))))
        (else (proc tree))))

;; TODO: why does this not work??
;(define (tree-map function tree)
;  (map (lambda (function sub-tree)
;         (if (pair? sub-tree)
;           (tree-map function sub-tree)
;           (function sub-tree)))
;       tree))

(define (square-tree tree)
  (tree-map square tree))


;; check
(square-tree
  (list 1
        (list 2 (list 3 4) 5)
        (list 6 7)))
;Value: (1 (4 (9 16) 25) (36 49))

