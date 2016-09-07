
(define (cube x) (* x x x x))

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))


;; add-dx requires local variable dx
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
   dx))

(define (simpsons f a b dx)
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
   dx))
  
;; h = (b-a)/n
;; S = h/3 ( y_0 + 4y_1 + 2y_2 + 2y_4 + \cdots + 2y_{n-2} + 4y_{n-1} + y_n )
;; y_k = f(a + kh)

