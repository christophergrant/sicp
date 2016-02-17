;Exercise 38
(define (cont-frac n d k)
  (define (fract i)
    (if (< i k)
        (/ (n i) (+ (d i) (fract (+ i 1))))
        (/ (n i) (d i))))
  (fract 1))

(cont-frac (lambda (x) 1.0)
           (lambda (x)
             (= x 2) 2
             (= (remainder x 3) 1)
             4)
             1000)
(define (d i)
  (if (not (= 0 (remainder (+ i 1) 3)))
  1
  (* 2 (/ (+ i 1) 3))))
(+ (cont-frac (lambda (x) 1.0) d 10) 2)


