

;; from HINT
(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))

;; wikipedia ancient egyptian multiplication
(define (mult a b)
  (cond ((= a 0) 0)
        ((= a 1) b)
        (else (mult (halve a) (double b)))))

