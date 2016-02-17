;Exercise 39
(define (tan-cf x k)
  (define (fract i)
    (if (< i k)
        (- (- (* 2 i) 1) (/ (square x) (fract (+ i 1))))
        (- (- (* 2 i) 1) (square x))))
  (/ x (fract 1)))
(define (square x)
  (* x x))

(tan-cf 2.0 30)

  ; x is radians
  ; k is the # of terms to compute
  ; start behavior: x / recursive mess
  ; mid behavior: (2i-1) - x^2/recursive mess
  ; end behavior: same (2i-10 -x^2), so mid minus the recursive mess
  ; we have 3 distinct behaviors, in contrast to exercise 37, where we only have 2

#|
I struggled with this problem for a while because I was trying to reduce our three conditions, but was unsuccessful
It dawned on me that I could just divide x by the result of fact, instead of checking for it in the fact function itself
Thus, this was basically a small change to exercise 37
|#