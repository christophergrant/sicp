; Exercise 8

(define (cube-iter x guess prev-guess)
  (if (good-enough? guess prev-guess)
      guess
      (cube-iter x (improve x guess) guess)))

(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess)) guess) .00001))

(define (improve x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3)) ; this part pissed me off a lot. I thought SICP stated
; that the method for improving the guess of the cube-root would be (x/(y^2 + 2y))/3, but it was
;((x/y^2) + 2y)/3, which is obviously completely different

(define (square x)
  (* x x))

(define (my-cube x)
  (cube-iter x 1.0 0.0))

(my-cube 10000000000000000)