
(define (memq item x)
  (cond ((null? x) false)
        ((eq? item (car x)) x)
        (else (memq item (cdr x)))))


(memq 'apple '(pear banan prune))
(memq 'apple '(x (apple sauce) y apple pear))

;; ex2-53

(list 'a 'b 'c)
;Value 14: (a b c)

(list (list 'george))
;Value 15: ((george))

(cdr '((x1 x2) (y1 y2)))
;Value 16: ((y1 y2))

(cadr '((x1 x2) (y1 y2)))
;Value 17: (y1 y2)

(pair? (car '(a short list)))
;Value: #f

(memq 'red '((red shoes) (blue socks)))
;Value: #f

(memq 'red '(red shoes blue socks))
;Value 18: (red shoes blue socks)


