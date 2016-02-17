;Exercise 42
(define (composition f g)
  (lambda (x) (f (g x))))

(define (square x)
  (* x x))
(define (inc x)
  (+ x 1))

((composition square inc) 6)