;;; Project Euler - Problem 10

;; The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

;; Find the sum of all the primes below two million.

(defun euler-10 ()
  (loop for i from 2 below 2000000 when (primep i) sum i))
