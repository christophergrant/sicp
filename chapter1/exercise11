; Exercise 11

;recursive
(define (newfn n)
  (if (< n 3)
      n
      (+ (newfn (- n 1))
         (* 2 (newfn (- n 2)))
         (* 3 (newfn (- n 3))))))

(newfn 4)

;iterative
(define (my-iter n)
  (iter 2 1 0 n))

(define (iter a b c count)
  (if (< count 3)
      a
      (iter (+ a (* 2 b) (* 3 c))
            a
            b
            (- count 1))))

(my-iter 4)