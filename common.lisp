;;; Common functions for solving problems

(defun primep (n)
  "Predicate to test the primality of N. If composite, the second
return value is the lowest factor."
  (loop for i from 2 to (sqrt n)
     when (= 0 (mod n i)) return (values nil i) finally (return t)))

(defun factors (n)
  "Return the prime factors of N."
  (multiple-value-bind (prime f) (primep n)
    (if prime
        (list n)
        (cons f (factors (/ n f))))))

(defun curry (function &rest args)
  "Partially apply FUNCTION to ARGS."
  (lambda (&rest more-args)
    (apply function (append args more-args))))

(defun rcurry (function &rest args)
  "Partially apply FUNCTION to ARGS as the rightmost arguments."
  (lambda (&rest more-args)
    (apply function (append more-args args))))
