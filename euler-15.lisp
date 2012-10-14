;;; Project Euler - Problem 15

;; Starting in the top left corner of a 2×2 grid, there are 6 routes
;; (without backtracking) to the bottom right corner.

;; How many routes are there through a 20×20 grid?

(defmemoized route-count (n m)
  (cond ((= n 1) (1+ m))
        ((= m 1) (1+ n))
        (t (+ (route-count (1- n) m) (route-count n (1- m))))))

(defun euler-15 ()
  (route-count 20 20))
