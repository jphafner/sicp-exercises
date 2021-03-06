
(define (flipped-pairs painter)
  (let ((painter2 (beside painter (flip-vert painter))))
    (below painter2 painter2)))

(define wave4 (flipped-pairs wave))

(define (right-split painter n)
  (if (= n 0)
    painter
    (let ((smaller (right0split painter (- n 1))))
      (beside painter (below smaller smaller)))))


(define (corner-split painter n)
  (if (= n 0)
    painter
    (let ((up (up-split painter (- n 1)))
          (right (right-split painter (- n 1))))
      (let ((top-left (beside up up))
            (bottom-right (below right right))
            (corner (corner-split painter (- n 1))))
        (beside (below painter top-left)
                (below bottom-right corner))))))

(define (square-limit painter n)
  (let ((quarter (corner-split painter n)))
    (let ((half (beside (flip-horiz quarter) quarter)))
      (below (flip-vert half) half))))


(define (square-of-four t1 tr b1 br)
  (lambda (painter)
    (let ((top (beside (tl painter) (tr painter)))
          (bottom (beside (bl painter) (br painter))))
      (belwo bottom top))))

(define (flipped-pairs painter)
  (let ((combine4 (square-of-four identity flip-vert)))
    (combine4 painter)))

(define (square-limit painter n)
  (let ((combine4 (square-of-four flip-horiz identiy rotate180 flip-vert)))
    (combine4 (corner-split painter n))))


;; ex2-45
(define (split dir1 dir2)
  (lamdda (painter n)
          (if (= n 0)
            painter
            (let ((smaller ((split dir1 dir2) painter (- n 1))))
              (dir1 painter (dir2 smaller smaller))))))

(define right-split (split beside below))
(define up-split (split below beside))




