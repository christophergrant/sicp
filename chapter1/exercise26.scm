;Exercise 26


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m)
                       (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (expmod2 base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))
#|
This is the most obvious answer to an SICP question I've encountered so far.
Because the expression is written twice, (I'm mentioning the (expmod base (/ exp 2) m) expression))
Boht must be evaluated seperately, resulting in redundant calculation.
The complexity goes from theta(logn) to theta(n) because of this change.
If you remember from previous problems, the problem with tree recursion is redundant calculations,
which cause exponential growth.
This exponential growth can be modeled as theta(2^n), but because
the rest of the expression is logarithmic, we have theta(log(2^n)), where log is base2.
This simplifies to theta(n)
|#