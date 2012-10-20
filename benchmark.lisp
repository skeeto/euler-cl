;;; Run all of the solutions in order.

;; It's interesting to see the differences (speed, warnings, errors)
;; between the various Common Lisp implementations.

(asdf:load-system :euler-cl)

(defun run-problem (n)
  "Run Project Euler problem N returning the answer and the run time."
  (let ((start (get-internal-real-time)))
    (values (funcall (intern (format nil "EULER-~d" n)))
            (/ (- (get-internal-real-time) start) 1.0
               internal-time-units-per-second))))

(time
 (loop for problem from 1 to 31 do
      (format t "Problem ~3,d: ~{~d ~30t(~6,3f seconds)~}~%" problem
              (multiple-value-list (run-problem problem)))))
