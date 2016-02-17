; Exercise 13

(define phi
  (/ (+ 1 (sqrt 5)) 2))

(define psi
  (/ (- 1 (sqrt 5)) 2))

phi
psi

(define (fib a b count)
  (if (= count 0)
      b
      (fib (+ a b) a (- count 1))))

(define (myfib n)
  (fib 1 0 n))

(myfib 3)


(define (expon x y)
  (if (= y 0)
      1
      (* x (expon x (- y 1)))))

(define (proof n)
  (/ (- (expon phi n) (expon psi n)) (sqrt 5)))

(define (proof? n)
  (or (= (myfib n) (floor (proof n)))
      (= (myfib n) (ceiling (proof n)))))

(proof? 71) ; works up to 71, pretty good
;prior to this version, I didn't use the floor/ceiling functions
; and the proof's accuracy was limited to n = 10