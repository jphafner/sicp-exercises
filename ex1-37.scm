

;; recursive definition
(define (cont-frac n d k)
  (define (next i)
    (if (> i k)
      1 ;null-value
      (/ (n i) (+ (d i) (next (+ i 1))))))
    (next 1))

;; ex1-37 solution
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           1)
;Value: .5
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           2)
;Value: .6666666666666666
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           3)
;Value: .6000000000000001
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           4)
;Value: .625
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           5)
;Value: .6153846153846154
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           6)
;Value: .6190476190476191
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           7)
;Value: .6176470588235294
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           8)
;Value: .6181818181818182
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           9)
;Value: .6179775280898876
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           10)
;Value: .6180555555555556
;Exact: .6180339887498948
;partA: 10 times for 4 sig figs
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)
;Value: .6180257510729613
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           12)
;Value: .6180371352785146

;; partB

;; TODO: iterative definition
(define (cont-frac n d k)
  (define (next i)
    (if (> i k)
      1 ;null-value
      (/ (n i) (+ (d i) (next (+ i 1))))))
    (next 1))


