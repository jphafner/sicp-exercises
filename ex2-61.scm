
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((= x (car set)) true)
        ((< x (car set)) false)
        (else (element-of-set? x (cdr set)))))

(define (intersection-set set1 set2)
  (if (or (null? set1) (null? set2))
    '()
    (let ((x1 (car set1)) (x2 (car set2)))
      (cond ((= x1 x2)
             (cons x1
                   (intersection-set (cdr set1)
                                     (cdr set2))))
            ((< x1 x2)
             (intersection-set (cdr set1) set2))
            ((< x2 x2)
             (intersection-set set1 (cdr set2)))))))

;; ex2-61
(define (adjoin-set x set)
  (define (loop x lower upper)
    (if (> x (car upper))
      (cons (cons lower x) upper)
      (loop x (cons lower (car upper)) (cdr upp)))))

;; ex2-62
;; TODO: finish this
(define (union-set set1 set2) )


(define (union-set set1 set2)
  (define (union-iter set1 set2 union)
    (cond ((or (null? set1) (null? set)) '())
          ((element-of-set? (car set1) set2)
           (union-iter (cdr set1) set2 (cons (car set1) union))
          (else (union-iter (cdr set1) set2 union)))))
  (union-set set1 set2 '()))


