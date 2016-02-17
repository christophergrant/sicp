;Exercise 29
#|
h = (/ (- b a) n))
y sub k = (+ a (* h k))
n = number of subintervals, the higher the value of n, the more accurate the approx.

Algorithm runthrough:


|#

; f = the function "cube"

(define (simpsons-rule f a b n)
  (define h (/ (- b a) n))
  (define (inc x)
    (+ x 1))
  (define (y k)
    (f (+ a (* h k))))
  (define (term k)
    (* (cond ((odd? k) 4)
             ((or (= k n) (= k 0)) 1)
             ((even? k) 2))
       (y k)))
  (/ (* h (sum term 0 inc n)) 3))

                  

(define (cube x)
  (* x x x))
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))



(simpsons-rule cube 0 1 100.0)
(simpsons-rule cube 0 1 1000.0)