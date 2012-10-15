;;; Project Euler - Problem 19

;; You are given the following information, but you may prefer to do
;; some research for yourself.

;; * 1 Jan 1900 was a Monday.
;; * Thirty days has September,
;;   April, June and November.
;;   All the rest have thirty-one,
;;   Saving February alone,
;;   Which has twenty-eight, rain or shine.
;;   And on leap years, twenty-nine.
;; * A leap year occurs on any year evenly divisible by 4, but not on
;;   a century unless it is divisible by 400.

;; How many Sundays fell on the first of the month during the
;; twentieth century (1 Jan 1901 to 31 Dec 2000)?

(defconstant +weekdays+
  '#1=(sunday monday tuesday wednesday thursday friday saturday . #1#))

(defun day-of-week (year month day)
  "Return day of week for 1-indexed date using Gaussian method."
  (let* ((Y (if (< month 3) (1- year) year))
         (m (1+ (mod (+ month 9) 12)))
         (y (mod Y 100))
         (c (floor Y 100)))
    (nth (+ day (floor (- (* 26 m) 2) 10) y (floor y 4) (floor c 4) (* -2 c))
         +weekdays+)))

(defun euler-19 ()
  (loop for year from 1901 to 1999
     sum (loop for month from 1 to 12
            count (eq 'sunday (day-of-week year month 1)))))
