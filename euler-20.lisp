;;; Project Euler - Problem 20

;; n! means n × (n − 1) × ... × 3 × 2 × 1

;; For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800, and the sum
;; of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

;; Find the sum of the digits in the number 100!

(defun euler-20 ()
  (loop with n = (! 100)
     until (zerop n) sum (mod n 10)
     do (setf n (floor n 10))))
