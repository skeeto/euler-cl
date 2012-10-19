;;; Run all of the solutions in order.

;; It's interesting to see the differences (speed, warnings, errors)
;; between the various Common Lisp implementations.

(asdf:load-system :euler-cl)

(time
 (loop for problem from 1 to 31
    do (format t "Problem ~3,d: ~d~%" problem
               (funcall (intern (format nil "EULER-~d" problem))))))
