;;; Project Euler - Problem 6

;; The sum of the squares of the first ten natural numbers is,

;;     1^2 + 2^2 + ... + 10^2 = 385

;; The square of the sum of the first ten natural numbers is,

;;     (1 + 2 + ... + 10)^2 = 55^2 = 3025

;; Hence the difference between the sum of the squares of the first
;; ten natural numbers and the square of the sum is 3025 − 385 = 2640.

;; Find the difference between the sum of the squares of the first one
;; hundred natural numbers and the square of the sum.

(defun euler-6 ()
  (let ((base (loop for i from 1 to 100 collect i)))
    (- (expt (apply #'+ base) 2)
       (apply #'+ (mapcar (rcurry #'expt 2) base)))))
