;;; Project Euler - Problem 9

;; A Pythagorean triplet is a set of three natural numbers, a < b < c,
;; for which,

;;    a^2 + b^2 = c^2

;; For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

;; There exists exactly one Pythagorean triplet for which
;; a + b + c = 1000.

;; Find the product abc.

(defun euler-9 ()
  (loop for a from 1 to 1000 do
       (loop for b from 1 to 1000 do
            (loop for c from 1 to 1000 do
                 (if (and (= (+ (* a a) (* b b)) (* c c))
                          (= (+ a b c) 1000))
                     (return-from euler-9 (* a b c)))))))
