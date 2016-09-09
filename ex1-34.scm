
(define (square x) (* x x))

(define (f g)
  (g 2))

(f square)

(f (lambda (z) (* z (+ z 1))))

(f f)

;The object 2 is not applicable

;(f f)
;(f 2)
; 2 is not a function

