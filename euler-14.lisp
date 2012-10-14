;;; Project Euler - Problem 14

;; The following iterative sequence is defined for the set of positive
;; integers:

;;     n → n/2 (n is even)
;;     n → 3n + 1 (n is odd)

;; Using the rule above and starting with 13, we generate the
;; following sequence:

;;     13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

;; It can be seen that this sequence (starting at 13 and finishing at
;; 1) contains 10 terms. Although it has not been proved yet (Collatz
;; Problem), it is thought that all starting numbers finish at 1.

;; Which starting number, under one million, produces the longest
;; chain?

;; NOTE: Once the chain starts the terms are allowed to go above one
;; million.

(defun collatz (n &optional (accum 0))
  (cond ((= n 1) accum)
        ((evenp n) (collatz (/ n 2) (1+ accum)))
        ((oddp n) (collatz (+ (* 3 n) 1) (1+ accum)))))

(defun euler-14 ()
  (loop with best = 0 and besti
     for i from 1 to 1000000
     when (> (collatz i) best) do (setf best (collatz i) besti i)
     finally (return besti)))
