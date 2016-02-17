;Exercise 41
(define (double g n)
  (g (g n)))

(define (square n)
  (* n n))
(define (inc x)
  (+ x 1))
(double square 3)

(((double (double double)) inc) 5)
; An error is returned.
; This is because double takes two args, not 1
; The innermost "double" function only has 1 arg.