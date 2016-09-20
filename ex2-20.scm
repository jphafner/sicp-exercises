
;; TODO
;(define nil ())
;
;(define (scale-list items factor)
;  (if (null? items)
;    nil
;    (cons (* (car items) factor)
;          (scale-list (cdr items) factor))))
;
;(scale-list (list 1 2 3 4 5) 10)
;
;(define (map proc items)
;  (if (null? items)
;    nil
;    (cons (proc (car items))
;          (map proc (cdr items)))))
;
;(map abs (list -10 2.5 -11.6 17))
;
;(define (scale-list items factor)
;  (map (lambda (x) (* x factor)) items))
;


;; ex2-20
(define (odd? x)
  (= (modulo x 2) 0))

;; TODO: this is not finished!!!!
(define (same-parity a . b)
  (if (= (odd? a) (odd? (car b)))
    (cons (car b) (same-parity a (cdr b)))
    (same-parity a (cdr b))))
    ;(else nil)))

(same-parity 1 2 3 4 5 6 7)
;Value: (1 3 5 7)

(same-parity 2 3 4 5 6 7)
;Value: (2 4 6)

