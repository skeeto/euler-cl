;;; Project Euler - Problem 24

;; A permutation is an ordered arrangement of objects. For example,
;; 3124 is one possible permutation of the digits 1, 2, 3 and 4. If
;; all of the permutations are listed numerically or alphabetically,
;; we call it lexicographic order. The lexicographic permutations of
;; 0, 1 and 2 are:

;;     012   021   102   120   201   210

;; What is the millionth lexicographic permutation of the digits 0, 1,
;; 2, 3, 4, 5, 6, 7, 8 and 9?

(defun permute-n (n seq)
  "Return permutation N of SEQ as a list."
  (if (= n 0)
      (coerce seq 'list)
      (let* ((modulus (! (1- (length seq))))
             (el (elt seq (floor n modulus))))
        (cons el (permute-n (mod n modulus) (remove el seq))))))

(defun euler-24 ()
  (reduce (lambda (a b) (+ b (* a 10)))
          (permute-n 999999 '(0 1 2 3 4 5 6 7 8 9))))
