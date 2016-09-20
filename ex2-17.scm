
(define (list-ref items n)
  (if (= n 0)
    (car items)
    (list-ref (cdr items) (- n 1))))

(define squares (list 1 4 9 16 25))

(list-ref squares 3)

(define (length items)
  (if (null? items)
    0
    (+ 1 (length (cdr items)))))
(define odds (list 1 3 5 7))

(length odds)

(define (length items)
  (define (length-iter a count)
    (if (null? a)
      count
      (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(append squares odds)
(append odds squares)

(define (append list1 list2)
  (if (null? list1)
    list2
    (cons (car list1) (append (cdr list1) list2))))

;; ex2-17
(define (last-pair a)
  (if (null? (cdr a))
    (car a)
    (last-pair (cdr a))))


(last-pair (list 23 72 149 34 85 73))
;; it works!!


