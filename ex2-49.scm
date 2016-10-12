
(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
      (lambda (segment)
        (draw-line
          ((frame-coord-map frame) (start-segment segment))
          ((frame-coord-map frame) (end-sement segment))))
      segment-list)))

;; import ex2-46 for definition of coord

;; import ex2-47 for definition of frame

;; ex2-48
(define (make-segment coord1 coord2)
    (cons coord1 coord2))

(define (start-segment segment)
  (car segment))

(define (start-segment segment)
  (cdr segment))

;; ex2-49-a
;; construct segment-list then (segments->painter segment-list)
;; (lower-left to upper-left)
;; (upper-left to upper-right)
;; (upper-right to lower-right)
;; (lower-right to lower-left)

;; TODO: Finish this??
(define (outline frame)
  ;; construct segment-list
  (segments->painter segment-list))

;; ex2-49-b
;; (lower-left to upper-right)
;; (upper-left to lower-right)

;; ex2-49-c
;; (right-middle to upper-middle)
;; (upper-middle to left-middle)
;; (left-middle to lower-middle)
;; (lower-middle to right-middle)

;; ex2-49-d
;; call wave function with a coordinate??

