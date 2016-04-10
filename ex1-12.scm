

;; pascal's triangle
(define (pascal row col)
  (cond ((< row col) 0)
        ((= row col) 1)
        ((= col 1) 1)
        (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col) ))))


;;    | 1  2  3  4  5  6  7  8
;;  -----------------------------
;;  1 | 1
;;  2 | 1  1
;;  3 | 1  2  1
;;  4 | 1  3  3  1
;;  5 | 1  4  6  4  1
;;  6 | 1  5  10 10 5  1
;;  7 | 1  6  15 20 15 6  1
;;  8 | 1  7  21 35 35 21 7  1



