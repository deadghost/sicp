;; Exercise 1.3. Define a procedure that takes three numbers as arguments and
;; returns the sum of the squares of the two larger numbers.

(define (two-sq x y z)
  (cond ((and (< x y) (< x z)) (+ (* y y)
                                  (* z z)))
        ((and (< y x) (< y z)) (+ (* x x)
                                  (* z z)))
        ((and (< z y) (< z x)) (+ (* y y)
                                  (* x x)))))
