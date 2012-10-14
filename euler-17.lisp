;;; Project Euler - Problem 17

;; If the numbers 1 to 5 are written out in words: one, two, three,
;; four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in
;; total.

;; If all the numbers from 1 to 1000 (one thousand) inclusive were
;; written out in words, how many letters would be used?

;; NOTE: Do not count spaces or hyphens. For example, 342 (three
;; hundred and forty-two) contains 23 letters and 115 (one hundred and
;; fifteen) contains 20 letters. The use of "and" when writing out
;; numbers is in compliance with British usage.

(defun euler-17 ()
  (labels ((invalidp (c) (member c '(#\space #\-))))
    (- (loop for i from 1 to 1000
          sum (* 3 (1- (floor (log i 10)))) ; count "and"s
          sum (length (delete-if #'invalidp (format nil "~r" i))))
       6))) ; Uncount "and" for 1000 and 100
