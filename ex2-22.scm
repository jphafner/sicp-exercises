
(define (square x) (* x x))
(define nil ( ))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons (square (car things))
                  answer))))
  (iter items nil))

(square-list (list 1 3 5 7 9 11 13))
;Value: (169 121 81 49 25 9 1)

;; TOTO: explain this output!!!

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons answer
                  (square (car things))))))
  (iter items nil))

(square-list (list 1 3 5 7 9 11 13))
;Value: (((((((() . 1) . 9) . 25) . 49) . 81) . 121) . 169)

;; TOTO: explain this output!!!


;; fixed below
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (append (list answer) (list (square (car things)))))))
  (iter items nil))

(square-list (list 1 3 5 7 9 11 13))



