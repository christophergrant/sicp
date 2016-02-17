; Exercise 34

(define (f g)
  (g 2))
(define (square x)
  (* x x))
(f square)
4



(f (lambda (z) (* z (+ z 1))))
6

(f f)

#| Applying that procedure to itself will not work, because
f is not a procedure among itself. 
|#