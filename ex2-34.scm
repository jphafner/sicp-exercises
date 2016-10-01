

;; from ex2-33
(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))


;; start ex2-35
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                ;; almost, had to reference
                ;(+ (* this-coeff x) (car higher-terms))
                (+ (* x higher-terms) this-coeff))
              0
              coefficient-sequence))

;; evaluate (1 + 3x + 5x^3 + x^5) at x=2
(horner-eval 2 (list 1 3 0 5 0 1))
;Value: 79

;; factor
;; 1 + 3x + 5x^3 + x^5
;; 1 + x (3 + 5x^2 + x^4)
;; 1 + x (3 + x^2 (5 + x^2))
;; 1 + (* x higher-terms)

