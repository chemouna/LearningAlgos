#lang racket

(require math/array)

(define (counting-sort coll [min (apply min coll)]
                            [max (apply max coll)])
  (let ((i 0)
        (counts (make-vector 0 (length coll))) null)

    counts)


