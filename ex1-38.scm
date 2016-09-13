
;; recursive definition
(define (cont-frac n d k)
  (define (next i)
    (if (> i k)
      1 ;null-value
      (/ (n i) (+ (d i) (next (+ i 1))))))
    (next 1))

;; always 1.0
(define (n i) 1.0)
;; 1 2 1 1 4 1 1 6 1 1 8 1 1 10 1 1 12 1 1 14 ...
(define (d i)
  (cond ((= i 1) 1)
        ((= i 2) 2)
        ((< (modulo i 3) 2) 1)
        (else (* (/ i 3) 2))))
    
(cont-frac n d 10)
;Value: .718878812860676
;Exact: .718281828459045

