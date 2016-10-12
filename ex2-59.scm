
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (if (element-of-set? x set)
    set
    (cons x set)))

(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))


;; ex2-59
(define (union-set set1 set2)
  (define (union-iter set1 set2 union)
    (cond ((or (null? set1) (null? set)) '())
          ((element-of-set? (car set1) set2)
           (union-iter (cdr set1) set2 (cons (car set1) union))
          (else (union-iter (cdr set1) set2 union)))))
  (union-set set1 set2 '()))



