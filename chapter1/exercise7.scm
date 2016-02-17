; Exercise 7

#| The good-enough test is not "good enough" for small numbers because
the tolerance is only .001. For example, using the sqrt-iter for .0001
 will yield ~.0002, which has a 200% margain of error.

The test also fails for very large numbers. Once you reach a certain value,
the test actually stops responding. I think this is due to memory truncation
with large numbers. 
|#

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess)) guess) .00001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (my-sqrt x)
  (sqrt-iter 1.0 0.0 x))

(define (square x)
  (* x x))

(my-sqrt 81); ~9
(my-sqrt (square 12e12)) ;test, returns itself as it should
  