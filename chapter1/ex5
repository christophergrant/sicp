;Exercise 5

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))


#|Applicative Order evaluation
 Because applicative order eval requires the evaluation of the sub-expression,
 this procedure will not terminate. This is because (p) is recursively
 defined as itself. Thus, Because Applicative order requires the evaluation
 of the sub-expression, which itself cannot be evaluated, this procedure will
 end up looping forever. |#

#|Normal Order Eval
  Because normal order eval requires expansion of the sub-expression before evaluation,
  this procedure will be evaluated to 0. The problem with applicative order
  is avoided by normal order eval, becuase it completely ignores the evaluation
  of (p) until the very end. Because (p) is not part of the if expression, it is therefore
  not important to the evaluation of the rest of the sub-expression. |#