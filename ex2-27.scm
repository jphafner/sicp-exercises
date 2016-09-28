
(define (reverse items)
  (if (null? items)
    items
    (append (reverse (cdr items)) (list (car items)))))

(define null ())

;; NOTE: too complex
(define (deep-reverse items)
  (define (iter items result)
    (if (null? items)
      result
      (iter (cdr items)
            (cons (if (pair? (car items))
                    (deep-reverse (car items))
                    (car items))
                  result))))
  (iter items null))


;; NOTE: these are much simpler
(define (deep-reverse items)
  (if (pair? items)
    (reverse (map deep-reverse items) items)))

(define (deep-reverse items)
  (cond ((null? items) items)
        ((pair? (car items)) (reverse items))
        (else (reverse (cdr items)))))

;; start ex2-27
(define x (list (list 1 2) (list 3 4)))
x
(reverse x)
(deep-reverse x)


