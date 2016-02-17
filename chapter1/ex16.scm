;Exercise 16

(define (fast-exp a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-exp a (square b) (/ n 2)))
        (else (fast-exp (* a b) b (- n 1)))))

(define (square x)
  (* x x))


(define (my-exp b n)
  (fast-exp 1 b n))

(my-exp 2 9)