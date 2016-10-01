
(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
      (list empty-board)
      (filter
        (lambda (positions) (safe? k positions))
        (flatmap
          ;; switch new-row and rest-of-queens below
          (lambda (new-row)
            (map (lambda (rest-of-queens)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
    (queen-cols board-size))

;; ex2-43
;; how does this change the scaling of the problem?

;; this converts a linear recursive problem to a tree-recursive problem
;; id est, it calculates all solutions, the first did not


