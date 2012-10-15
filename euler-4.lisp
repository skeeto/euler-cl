;;; Project Euler - Problem 4

;; A palindromic number reads the same both ways. The largest
;; palindrome made from the product of two 2-digit numbers is 9009 =
;; 91 × 99.

;; Find the largest palindrome made from the product of two 3-digit
;; numbers.

(defun palindromep (seq)
  (let ((end (1- (length seq))))
    (or (< end 1)
        (and (eql (elt seq 0) (elt seq end))
             (palindromep (subseq seq 1 end))))))

(defun euler-4 ()
  (loop for a from 1 to 999 maximize
       (loop for b from 1 to 999
          when (palindromep (prin1-to-string (* a b)))
          maximize (* a b) into best
          finally (return (or best 0)))))
