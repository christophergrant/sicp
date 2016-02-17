; Exercise 3


(define (sols a b c)
  (+ (square (max a b))
   (square (max (min a b) c))))

(define (square a)
  (* a a))

(sols 3 2 1)