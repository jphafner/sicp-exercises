
(define (reverse items)
  (if (null? items)
    items
    (append (reverse (cdr items)) (list (car items)))))

;; TODO: finish deep-reverse
(define (deep-reverse items)
  (define (deep-rev-imp items result)
    (if (null? items)
      result
      (let ((first (car items)))
        (deep-rev-imp (cdr items)
                      (cons (if (not (pair? first))
                              first
                              (deep-reverse first))
                            result)))))
  (deep-rev-imp items nil))

;(define (deep-reverse items)
;  (if (pair? items)
;    (reverse (map deep-reverse items) items)))

;; rework this 
(define (deep-reverse items)
  (cond ((null? items) items)
        ((pair? (car items)) (reverse items))
        (else (reverse (cdr items)))))

(define x (list (list 1 2) (list 3 4)))

x
(reverse x)

(deep-reverse x)


