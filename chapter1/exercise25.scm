#| Alyssa P. Hacker complains that we went to a lot of extra work in writing expmod.
After all, she says, since we already know how to compute exponentials, we could have simply written

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

Is she correct? Would this procedure serve as well for our fast prime tester? Explain.

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
|#
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))        





#|
Alyssa's proposal does not go well for us.

Her proposed expmod expression is much slower than our original expmod.

This is because of the way the original is setup. 

The reduction steps in the cases where the exponent e is greater than 1 are based on the fact that,
for any integers x, y, and m, we can find the remainder of x times y modulo m by computing separately the remainders
of x modulo m and y modulo m, multiplying these, and then taking the remainder of the result modulo m.
For instance, in the case where e is even, we compute the remainder of b*e/2 modulo m, square this,
and take the remainder modulo m. This technique is useful because it means we can perform our computation
without ever having to deal with numbers much larger than m. (Compare exercise 1.25.) (from footnote 46)

In other words, because we use the modulus operator with each step, our answer is bound by m, which is usually smaller than x and y
I predict that if m is about the same as x and y, performance between the two expmod functions would be similar.
Unfortunately, I'm too lazy and far too confident that I'm right, so I'll just leave it there.
|#