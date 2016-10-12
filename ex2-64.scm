
;; old
(define (entry tree) (car tree))
(define (left-branch tree) (cadr tree))
(define (right-branch tree) (caddr tree))
(define (make-tree entry left right)
  (list entry left right))

;; new
(define (list->tree elements)
  (car (partial-tree elements (length elements))))

(define (partial-tree elts n)
  (if (= n 0)
    (cons '() elts)
    (let ((left-size (quotient (- n 1) 2)))
      (let ((left-result (partial-tree elts left-size)))
        (let ((left-tree (car left-result))
              (non-left-elts (cdr left-result))
              (right-size (- n (+ left-size 1))))
          (let ((this-entry (car non-left-elts))
                (right-result (partial-tree (cdr non-left-elts)
                                            right-size)))
            (let ((right-tree (car right-result))
                  (remaining-elts (cdr right-result)))
              (cons (make-tree this-entry left-tree right-tree)
                    remaining-elts)
              )
            )
          )
        )
      )
    )
  )

;(list->tree '((3 (5 (3 (8))))))
(make-tree (make-tree (make-tree '(x) '(3) '(5)) '(10) '(11)) '(12) '(13))
(list->tree (make-tree (make-tree (make-tree '(x) '(3) '(5)) '(10) '(11)) '(12) '(13)))

;; TODO: answer question

;; ex-64a
;; how does partial-tree work?

;; ex-64b
;; what is the order of growth for list->tree


