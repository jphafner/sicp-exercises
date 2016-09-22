
(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))
; ]=>
; 57
; 321
; 88

;; ex2-23
(define (for-each f l)
  (define (iter x)
    (if (null? (cdr x))
        (f (car x))
        (begin
          (f (car x))
          (iter (cdr x)))))
  (iter l))
;Value: for-each

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))
; ]=>
; 57
; 321
; 88

