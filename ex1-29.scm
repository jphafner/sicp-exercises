
(define (square a)
  (* a a))
(define (cube x)
  (* x x x))
(define (even? n)
  (= (remainder n 2) 0))
(define (inc n)
  (+ n 1))

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))


;; add-dx requires local variable dx
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
   dx))

;; simpson's rule, original solution
(define (simpsons f a b n)
  (define h (/ (- b a) n))
  (define (g x) (f (+ a (* h x))))
  (define (s-iter k num)
    (cond ((> k n) num)
          ((or (= k 0) (= k n))  (s-iter (inc k) (+ num (g k))))
          ((even? k) (s-iter (inc k) (+ num (* 2 (g k)))))
          (else (s-iter (inc k) (+ num (* 4 (g k)))))))
  (/ (* h (s-iter 0 0)) 3))

;; better simpson's rule, more succinct
(define (simpsons f a b n)
  (define h (/ (- b a) n))
  (define (g x) (f (+ a (* h x))))
  (define (s-term k)
    (cond ((or (= k 0) (= k n)) (g k))
          ((even? k) (* 2 (g k)))
          (else (* 4 (g k)))))
  (* (sum s-term 0 inc n) (/ h 3)))


;; h = (b-a)/n
;; S = h/3 ( y_0 + 4y_1 + 2y_2 + 2y_4 + \cdots + 2y_{n-2} + 4y_{n-1} + y_n )
;; y_k = f(a + kh)

