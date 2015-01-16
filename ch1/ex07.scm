;; Exercise 1.7. The good-enough? test used in computing square roots will not
;; be very effective for finding the square roots of very small numbers. Also,
;; in real computers, arithmetic operations are almost always performed with
;; limited precision. This makes our test inadequate for very large numbers.
;; Explain these statements, with examples showing how the test fails for small
;; and large numbers. An alternative strategy for implementing good-enough? is
;; to watch how guess changes from one iteration to the next and to stop when
;; the change is a very small fraction of the guess. Design a square-root
;; procedure that uses this kind of end test. Does this work better for small
;; and large numbers?

;; It is an ineffective test for small numbers because the percent tolerance
;; increases as the true square root becomes smaller. For example if the true
;; square root is 0.0001 our test will accept 0.001 as a value; an order of a
;; magnitude higher!

;; The test will fail for large numbers because machine precision is unable to
;; represent small differences between large numbers and the loop will not end
;; because the difference will never hit the accepted threshold.

;; Fixed to use a percentage instead of a hard value.
(define (good-enough? guess x)
  (< (abs (- (* guess guess) x))
     (* 0.001 x)))
