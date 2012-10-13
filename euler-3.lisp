;;; Project Euler - Problem 3

;; The prime factors of 13195 are 5, 7, 13 and 29.

;; What is the largest prime factor of the number 600851475143?

(defun euler-3 ()
  (loop with n = 600851475143 for i from 1 to (sqrt n)
     when (and (= 0 (mod n i)) (primep i)) maximize i))
