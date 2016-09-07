
(load "ex1-24.scm")

; Carmichael numbers: 561 1105 1729 2465 2821 6601
(map fast-prime? (list 561 1105 2465 2821 6601) (list  4 4 4 4 4))

;Value 1: (#t #t #t #t #t)

