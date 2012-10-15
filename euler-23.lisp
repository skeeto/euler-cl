;;; Project Euler - Problem 23

;; A perfect number is a number for which the sum of its proper
;; divisors is exactly equal to the number. For example, the sum of
;; the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which
;; means that 28 is a perfect number.

;; A number n is called deficient if the sum of its proper divisors is
;; less than n and it is called abundant if this sum exceeds n.

;; As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the
;; smallest number that can be written as the sum of two abundant
;; numbers is 24. By mathematical analysis, it can be shown that all
;; integers greater than 28123 can be written as the sum of two
;; abundant numbers. However, this upper limit cannot be reduced any
;; further by analysis even though it is known that the greatest
;; number that cannot be expressed as the sum of two abundant numbers
;; is less than this limit.

;; Find the sum of all the positive integers which cannot be written
;; as the sum of two abundant numbers.

(defun euler-23 ()
  (let ((table (make-hash-table))
        (abundant (loop for i from 1 to 28123
                     when (> (apply #'+ (divisors i)) (+ i i)) collect i)))
    (loop for tail on abundant do
         (loop with x = (car tail)
            for n in tail         ; register each number that is a sum
            when (<= (+ x n) 28123) do (setf (gethash (+ x n) table) t)))
    (loop for i from 1 to 28123      ; add up anything not found above
       when (not (gethash i table)) sum i)))
