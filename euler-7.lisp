;;; Project Euler - Problem 7

;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we
;; can see that the 6th prime is 13.

;; What is the 10,001st prime number?

(defun euler-7 ()
  (loop with count = 0
     for i upfrom 2
     when (primep i) do (incf count)
     until (= count 10001) finally (return i)))
