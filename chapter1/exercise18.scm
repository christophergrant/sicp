;Exercise 18

(define (double x)
  (* x 2))

(define (half x)
  (/ x 2))

(define (fast-mult a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-mult a (double b) (half n)))
        (else (fast-mult (+ a b) b (- n 1)))))

(define (my-mult b n)
  (fast-mult 0 b n))

(my-mult 2 3) ;6
(my-mult 100 183) ;18300
(my-mult 3 2) ; 6