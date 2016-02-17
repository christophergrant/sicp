;Exercise 31

;a
(define (product term a next b)
  (if (> a b)
         1
         (* (term a)
            (product term (next a) next b))))
(define (inc x)
  (+ x 1))
(define (self x)
  (if (= x 0)
      1
      x))

(product self 1 inc 10)


; Notice that this function computes factorials,
; given you define the "term" as self, or returning
; the number itself.

(define (pi-term n)
  (* (/ (* 2 n) (+ (* 2 n) 1)) (/ (* 2 n) (- (* 2 n) 1))))

(* 2 (product pi-term 1.0 inc 100000.0)); multiplied by two because
; the defined function produces pi/2

;b

(define (product-iter term a next b)
  (define (iter a result)
    (if (< a 1)
        result
        (iter (next a) (* (term a) result))))
  (iter b 1)); a starts at b, iterates until it is 1
(define (dec n)
    (- n 1))

(product-iter self 1 dec 10)
         