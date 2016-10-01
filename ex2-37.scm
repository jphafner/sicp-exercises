
(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))

(define nil ())
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
    nil
    (cons (accumulate op init (map car seqs))
          (accumulate-n op init (map cdr seqs)))))

(define m '((1 2 3 4) (4 5 6 6) (6 7 8 9)))
(define v '(1 2 3 4))
; row indexed matrix
; [1 2 3 4]
; [4 5 6 6]
; [6 7 8 9] 

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (row) (dot-product row v)) m))

(define (transpose mat)
  (accumulate-n cons nil mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (row) (map (lambda (col)
                            (dot-product col row))
                          cols))
         m)))

(dot-product v v)
;Value: 30
(matrix-*-vector m v)
;Value: (30 56 80)
(transpose m)
;Value: ((1 4 6) (2 5 7) (3 6 8) (4 6 9))
(matrix-*-matrix m m)
;Value: ((27 33 39 43) (60 75 90 100) (82 103 124 138))

