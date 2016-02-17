;Exercise 28
#lang planet neil/sicp
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))
(define (square n)
  (* n n))

#|
Call miller-rabin, inputting and passing an integer x, returning #t/#f
X is passed to expmod, which returns the exponential of a number, modulo another number
X is the exponent variable and the second operand of the modulo function
Another variable, "n" is the base, which is randomly assigned by the "random" function
 which is the second operand of the expmod expression
Changes must be made to the expmod function, whereas in the first function,
 we square the expmod of our base "n", half of the exponent "X" and X, and take the remainder of that with X again.
In the new function, we must check if we have discovered a "nontrivial sqrt of 1 modulo n", or
a number that is not equal to 1, or (X-1), whose square is equal to 1 mod n
If this nontrivial sqrt exists, n is not prime.
Also, if X is an odd number that is not prime, then at least half the numbers n < X computing n^(X-1) will
reveal a nontrivial sqrt of 1 mod n
|#

(define (miller-rabin n)
  (define (try-it i)
   (= (expmod2 i (- n 1) n) 1)) 
  (try-it (+ 2 (random (- n 2)))))

(define (expmod2 base exp m)
  (cond ((= exp 0) 1)
   ((even? exp)
    (square-checker (expmod2 base (/ exp 2) m) m))
   (else
    (remainder (* base (expmod2 base (- exp 1) m))
         m))))
(define (square-checker x m)
  (if (and (not (or (= x 1) (= x (- m 1))))
           (= (remainder (square x) m) 1))
      0
      (remainder (square x) m)))

(miller-rabin 561)
   
           

              

