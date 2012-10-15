;;; Project Euler - Problem 22

;; Using names.txt, a 46K text file containing over five-thousand
;; first names, begin by sorting it into alphabetical order. Then
;; working out the alphabetical value for each name, multiply this
;; value by its alphabetical position in the list to obtain a name
;; score.

;; For example, when the list is sorted into alphabetical order,
;; COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name
;; in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

;; What is the total of all the name scores in the file?

(defconstant +euler-22+
  (with-open-file (*standard-input* "names.txt")
    (read-from-string (concatenate 'string "(" (delete #\, (read-line)) ")"))))

(defconstant +alphabet+ " ABCDEFGHIJKLMNOPQRSTUVWXYZ")

(defun euler-22 ()
  (loop with names = (sort (copy-seq +euler-22+) #'string<)
     for name in names
     sum (* (apply #'+ (map 'list (rcurry #'position +alphabet+) name))
            (1+ (position name names)))))
