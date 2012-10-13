;;; Project Euler - Problem 5

;; 2520 is the smallest number that can be divided by each of the
;; numbers from 1 to 10 without any remainder.

;; What is the smallest positive number that is evenly divisible by
;; all of the numbers from 1 to 20?

(defun euler-5-slow ()
  (loop with base = (loop for x from 2 to 20 collect x)
     for i upfrom 1
     when (every (lambda (n) (= 0 (mod i n))) base) return i))

(defun euler-5 ()
  (let* ((base (loop for x from 1 to 20 collect x))
         (expts (loop for n in base collect
                     (loop for f in (mapcar #'factors base)
                        maximize (count n f)))))
    (apply #'* (mapcar #'expt base expts))))
