
(define (entry tree) (car tree))
(define (left-branch tree) (cadr tree))
(define (right-branch tree) (caddr tree))
(define (make-tree entry left right)
  (list entry left right))

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((= x (entry set)) true)
        ((< x (entry set))
         (element-of-set? x (left-branch set)))
        ((> x (entry set))
         (element-of-set? x (right-branch set)))))

(define (adjoin-set x set)
  (cond ((null? set) (make-tree x '() '()))
        ((= x (entry set)) set)
        ((< x (entry set))
         (make-tree (entry set)
                    (adjoin-set x (left-branch set))
                    (right-branch set)))
        ((> x (entry set))
         (make-tree (entry set)
                    (left-branch set)
                    (adjoin-set x (right-branch set))))))


;; ex2-63
(define (tree->list-1 tree)
  (if (null? tree)
    '()
    (append (tree->list-1 (left-branch tree))
            (cons (entry tree)
                  (tree->list-1 (right-branch tree))))))

(define (tree->list-2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
      result-list
      (copy-to-list (left-branch tree)
                    (cons (entry tree)
                          (copy-to-list (right-branch tree)
                                        result-list)))))
  (copy-to-list tree '()))

;; ex2-63a
;; do the two functions always produce the same output?
;; Yes, they are functionally identical

;; ex2-63b
;; do the two functions have the same order of growth?
;; No, append is slower than cons
;; append will always traverse the entire list
;; append is O(n), cons is O(1)
;; see Schlemiel the Painter's algorithm


;; testing

;(define a (make-tree (make-tree (make-tree '(1) '(3) '(5)) '(10) '(11)) '(12) '(13)))
;(list->tree (make-tree (make-tree (make-tree '(x) '(3) '(5)) '(10) '(11)) '(12) '(13)))
(define a (make-tree '(1) '(3) '(5)))
(define a '((12) ((((1) (3) (5)) (10) (11)) () ()) ((13) () ())))
(tree->list-1 a)
(tree->list-2 a)


