;Exercise 20

#|The process that a procedure generates is of course dependent on the rules used by the interpreter.
As an example, consider the iterative gcd procedure given above.|#

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

#|Suppose we were to interpret this procedure using normal-order evaluation, as discussed in section 1.1.5.
(The normal-order-evaluation rule for if is described in exercise 1.5.)
Using the substitution method (for normal order), illustrate the process generated in evaluating (gcd 206 40) and
indicate the remainder operations that are actually performed.
How many remainder operations are actually performed in the normal-order evaluation of (gcd 206 40)?
In the applicative-order evaluation?  |#


#|
Normal order: Remember, normal order expands all operands to primitives.
It then evaluates from higher to lower precedence,

A normal order expansion of the given procedure would be illustrated like this.

(gcd 206, 40)
(if (= 40 0)
    206
    (gcd 40 (remainder 206 40))

(if = (remainder 206 40)) => 6
    40
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))

(if = (remainder 40 (remainder 206 40)) 0) => 4
    (remainder 206 40)
    (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))

(if = (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))) => 2
    (remainder 40 (remainder 206 40))
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
         (remainder (remainder 40 (remainder 206 40));a
                    (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))) ;b

(if = (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))

IS TRUE SO OUR ANSWER IS

(remainder (remainder 206 40) (remainder 40 (remainder 206 40))) => 2

We had 14 calculations from the if statements, and 4 from the computation of the answer, for a total of 18 evals.



APPLICATIVE ORDER:
(gcd 206, 40)
(if (= 40 0)
    206
    (gcd 40 (remainder 206 40))) => the second argument evals to 6

(gcd 40 6)
(if (= 6 0)
    40
    (gcd 6 (remainder 40 6))) => " " to 4

(gcd 6 4)
(if (= 4 0)
    6
    (gcd 4 (remainder 6 4))) => " " to 2

(gcd 4 2)
(if (= 2 0)
    6
    (gcd 2 (remainder 4 2))) " " to 0

(gcd 2 0)
(if (= 0 0)
    2

As we can see, there are only 4 remainder evaluations here.

18 - 4 = 14, the difference between the two evaluations for this particular problem, which is pretty huge in terms of computational
efficiency. Furthermore, we can see the number of redundant calculations in the normal order evaluation. 
|#