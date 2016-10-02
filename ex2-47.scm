
(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))

;; ex2-47
(define (origin-xcor frame)
  (xcor-vect (car frame)))
(define (origin-ycor frame)
  (ycor-vect (car frame)))

(define (edge1-xcor frame)
  (xcor-vect (cadr frame)))
(define (edge1-ycor frame)
  (ycor-vect (cadr frame)))

(define (edge2-xcor frame)
  (xcor-vect (caddr frame)))
(define (edge2-ycor frame)
  (ycor-vect (caddr frame)))

