;Exercise 17

(define (noniter-mult a b)
  (cond ((= b 0) a)
        ((even? b) (double (* a (halve b))))
        (else (+ a (* a (- b 1))))))

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(noniter-mult 2 3)
(noniter-mult 3 2)