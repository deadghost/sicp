;; Exercise 1.18: Using the results of Exercise 1.16 and Exercise 1.17,
;; devise a procedure that generates an iterative process for multiply-
;; ing two integers in terms of adding, doubling, and halving and uses
;; a logarithmic number of steps.

(define (double n)
  (+ n n))

;; Rounds down
(define (halve n)
  (define (halve-iter n m)
    (if (<= n m)
        n
        (halve-iter (- n 1) (+ m 1))))
  (halve-iter n 0))

(define (* a b)
  (define (*iter a b x)
    (cond ((= b 0) x)
          ((even? b) (*iter (double a) (halve b) x))
          (else (*iter a (- b 1) (+ x a)))))
  (*iter a b 0))
