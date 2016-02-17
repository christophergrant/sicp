;Exercise 43
(define (composition f g)
  (lambda (x) (f (g x))))


; f is square
; x is our base
; n is the number of iterations we want
; because comp. is already in terms of lambda, there is no need to
; involve an additional lambda. just put repeated in terms of comp.
(define (repeated f n)
  (if (= n 1)
      f
      (composition f (repeated f (- n 1)))))
(define (square x)
  (* x x))

((repeated square 2) 5)

(define (test f n)
  f)
((test square 2) 5)