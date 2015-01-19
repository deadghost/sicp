;; Exercise 1.11: A function f is defined by the rule that f ( n ) = n if
;; n < 3 and f ( n ) = f ( n − 1) + 2 f ( n − 2) + 3 f ( n − 3) if n ≥ 3. Write
;; a procedure that computes f by means of a recursive process. Write a
;; procedure that computes f by means of an iterative process.

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
                (* 2 (f-rec (- n 2)))
                (* 3 (f-rec (- n 3))))))

(define (f-iter n count ans1 ans2 ans3)
  (cond ((< n count) ans1)
        ((< count 3) (f-iter n (+ count 1) count ans1 ans2))
        (else (f-iter n
                      (+ count 1)
                      (+ ans1 (* 2 ans2) (* 3 ans3))
                      ans1 ans2))))

(define (do-f-iter n)
  (f-iter n 0 0 0 0))
