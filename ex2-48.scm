
(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
      (lambda (segment)
        (draw-line
          ((frame-coord-map frame) (start-segment segment))
          ((frame-coord-map frame)  (end-sement segment))))
      segment-list)))

;; import ex2-46 for definition of coord

;; ex2-48
(define (make-segment coord1 coord2)
    (cons coord1 coord2))

(define (start-segment segment)
  (car segment))

(define (start-segment segment)
  (cdr segment))


