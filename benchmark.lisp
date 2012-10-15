;;; Run all of the solutions in order.

;; It's interesting to see the differences (speed, warnings, errors)
;; between the various Common Lisp implementations.

(time
 (loop for problem from 1 to 25
    initially (load "common.lisp")
    do (load (format nil "euler-~d.lisp" problem))
    do (format t "Problem ~3,d: ~d~%" problem
               (funcall (intern (format nil "EULER-~d" problem))))))
