
; sum
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))


; product
(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (f x) x)
(define (inc x) (+ x 1))

; A factorial recursive
(define (factorial-a x)
  (if (< x 3)
    x
    (product f 2 inc x)))


; B factorial iterative
(define (factorial-b x)
  (define (f-iter k prod)
    (if (> k x)
      prod
      (f-iter (inc k) (* prod k))))
  (f-iter 1 1))


