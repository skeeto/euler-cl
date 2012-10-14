;;; Common functions for solving problems

(defun primep (n)
  "Predicate to test the primality of N. If composite, the second
return value is the lowest factor."
  (when (> n 1)
    (loop for i from 2 to (sqrt n)
       when (= 0 (mod n i)) return (values nil i) finally (return t))))

(defun factors (n)
  "Return the prime factors of N."
  (multiple-value-bind (prime f) (primep n)
    (if prime
        (list n)
        (cons f (factors (/ n f))))))

(defun divisors (n)
  "Return the divisors of N."
  (loop for i from 1 to (sqrt n)
     when (= 0 (mod n i)) collect i into small and collect (/ n i) into large
     finally (return (nconc small (nreverse large)))))

(defun curry (function &rest args)
  "Partially apply FUNCTION to ARGS."
  (lambda (&rest more-args)
    (apply function (append args more-args))))

(defun rcurry (function &rest args)
  "Partially apply FUNCTION to ARGS as the rightmost arguments."
  (lambda (&rest more-args)
    (apply function (append more-args args))))

(defmacro defmemoized (name args &rest body)
  "Like DEFUN but memoizes the function."
  (let ((table (make-hash-table :test #'equal)))
    `(defun ,name (&rest args)
       (labels ((f ,args ,@body))
         (multiple-value-bind (value found) (gethash args ,table)
           (if found
               value
               (setf (gethash args ,table) (apply #'f args))))))))
