
(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))

;; ex2-33

;; NOTE: map app procedure p to every element of sequence
(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

;; NOTE: reversed order
(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

;; NOTE: add one for each non null cdr of y
(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))


