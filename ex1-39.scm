

; n = 1 3 5
(define (d x)
  (- (* 2 x) 1))

; n = x x^2 x^3
(define (n x i)
  (if (< i 1)
    1
    (* x (n x (- i 1)))))

(define (tan-cf x k)
  (define (next i)
    (if (> i k)
      1
      (/ (n x i) (+ (d i) (next (+ i 1))))))
    (next 1))

(tan-cf 1.0 10)
(tan-cf 0.1 10)


