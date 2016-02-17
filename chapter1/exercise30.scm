;Exercise 30

#|
So, the first step is to reduce the # of vars from 4 to 2
This is possible because we are using iteration, rather than recursion
We keep a "running tally" with iteration, instead of expanding the expression

Instead of incrementing for the next term, let's try decrementing

If our index is less than 0, return the result because we're done
Else, run the iteration again, with the decremented index and updated result
|#

(define (sum term a next b)
  (define (iter a result)
    (if (< a 0)
        result
        (iter (next a) (+ (term a) result))))
  (iter b 0))
(define (cube x)
  (* x x x))
(define (dec x)
  (- x 1))

(sum cube 1 dec 10)



