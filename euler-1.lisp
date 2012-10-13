;;; Project Euler - Problem 1

;; If we list all the natural numbers below 10 that are multiples of 3
;; or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

;; Find the sum of all the multiples of 3 or 5 below 1000.

(defun euler-1 ()
  (loop for i from 1 below 1000
     when (or (= 0 (mod i 3)) (= 0 (mod i 5))) sum i))
