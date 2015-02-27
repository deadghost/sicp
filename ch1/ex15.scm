;; Exercise 1.15: The sine of an angle (specified in radians) can be
;; computed by making use of the approximation sin x ≈ x if x is
;; sufficiently small, and the trigonometric identity

;; sin x = 3 sin (/ x 3) − 4 sin^3(/ x 3)

;; to reduce the size of the argument of sin. (For purposes of this ex-
;; ercise an angle is considered “sufficiently small” if its magnitude is
;; not greater than 0.1 radians.) These ideas are incorporated in the
;; following procedures:

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;; a. How many times is the procedure p applied when (sine
;; 12.15) is evaluated?
;; b. What is the order of growth in space and number of steps (as a
;; function of a ) used by the process generated by the sine proce-
;; dure when (sine a) is evaluated?

;; a. IDK I don't care to trace this out. I cannot into math.
;; b. Space: O(a). The only thing to keep track of is the stack which just looks
;;    like (p (p (p (p (sine (/ angle 3.0))))))
;;    Steps: The number of steps is also linear O(a) as each depth level does
;;    not grow in width.

;; Apparently the true answer to b for both space and steps is O(log n) as
;; the space and complexity only increases every so often due to the nature of
;; the mathematical function. See:
;; http://www.billthelizard.com/2009/12/sicp-exercise-115-calculating-sines.html