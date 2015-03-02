;; Exercise 1.20: The process that a procedure generates is of course
;; dependent on the rules used by the interpreter. As an example,
;; consider the iterative gcd procedure given above. Suppose we
;; were to interpret this procedure using normal-order evaluation,
;; as discussed in Section 1.1.5. (The normal-order-evaluation rule
;; for if is described in Exercise 1.5.) Using the substitution method
;; (for normal order), illustrate the process generated in evaluating
;; (gcd 206 40) and indicate the remainder operations that are
;; actually performed. How many remainder operations are actually
;; performed in the normal-order evaluation of (gcd 206 40) ? In
;; the applicative-order evaluation?

;; Applicative Order
;; (gcd 206 40) ; 1
;; (gcd 40 6)   ; 2
;; (gcd 6 4)    ; 3
;; (gcd 4 2)    ; 4
;; (gcd 2 0)
;; 4 Remainder operations performed

;; Normal Order
(gcd 206 40) ; Call 1 - 0
(gcd 40  ; Call 2
     (% 206 40))
(if (= (% 206 40) 0) ... ) ; 1
(gcd (% 206 40) ; Call 3
     (% 40 (% 206 40)))
(if (= (% 40 (% 206 40)) 0) ... ) ; 2
(gcd (% 40 (% 206 40)) ; Call 4
     (% (% 206 40) (% 40 (% 206 40))))
(if (= (% (% 206 40) (% 40 (% 206 40))) 0) ... ) ; 4
(gcd (% (% 206 40) (% 40 (% 206 40))) ; Call 5
     (% (% 40 (% 206 40)) (% (% 206 40) (% 40 (% 206 40)))))
(if (= (% (% 40 (% 206 40)) (% (% 206 40) (% 40 (% 206 40)))) 0) ... ) ; 7

;; Conditional phase count - 14

;; Reduction of final a argument
(% (% 206 40) (% 40 (% 206 40))) ; 4
;; Reduction phase count - 4

;; Total count - 18
