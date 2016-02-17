; Exercise 4

;Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


;Predictions: if b is negative or zero, we subtract it from a
;             if b is positive, we add it to a

(a-plus-abs-b 5 -6)
(a-plus-abs-b 5 6) ; should return the same result of 11