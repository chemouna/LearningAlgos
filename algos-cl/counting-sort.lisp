

(defun counting-sort (sequence &optional (min (reduce #'min sequence))
                                 (max (reduce #'max sequence)))
  (let ((i 0)
        (counts (make-array (1+ (- max min)) :initial-element 0
                                             :element-type `(integer 0 ,(length sequence)))))
    (declare (dynamic-extent counts))
    (print "step 1")
    (print counts)
    (map nil (lambda (n) (incf (aref counts (- n min)))) sequence)
    (print "step 2")
    (print counts)
    (map-into sequence (lambda ()
                         (do () ((plusp (aref counts i)))
                           (print i)
                           (incf i))
                         ;(print "step 3")
                         (print counts)
                         (decf (aref counts i))
                         (+ i min)))))

(counting-sort '(3 1 4))

