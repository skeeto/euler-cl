;;; Project Euler - Problem 16

;; 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

;; What is the sum of the digits of the number 2^1000?

(defun euler-16 ()
  (loop with n = (expt 2 1000)
     until (= n 0) sum (mod n 10)
     do (setf n (floor n 10))))
