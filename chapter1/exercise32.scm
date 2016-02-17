;Exercise 32

;a
(define (accumulate combiner null-term term a next b)
  (if (> a b)
      null-term
      (combiner (term a) (accumulate combiner null-term term (next a) next b))))

(define addition +)
(define multiplication *)
(define (inc x)
  (+ x 1))
(define (self x)
  x)
(define null-add 0)
(define null-mult 1)
(define (dec x)
  (- x 1))

(accumulate addition null-add self 1 inc 10)
(accumulate multiplication null-mult self 1 inc 10)

;b
(define (accum-iter combiner null-term term a next b)
  (define (iter a result)
    (if (< a 1);tried < 0, didnt work for mult because 0 was included. it's okay to use 1
        result
        (iter (next a) (combiner (term a) result))))
  (iter b null-term))

(accum-iter addition null-add self 1 dec 10)
(accum-iter multiplication null-mult self 1 dec 10)



 
  