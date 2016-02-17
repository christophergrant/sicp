;Exercise 33

(define (accum-iter combiner null-term term filter a next b)
  (define (iter a result)
    (if (< a 1)
        result
            (iter (next a) (combiner (term (filter null-term a)) result))))
  (iter b null-term))
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
(define (prime? n)
  (= n (smallest-divisor n)))
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))

;a

(define (square x)
  (* x x))

(define (a-filt null n)
  (if (prime? n) 
      n
      null))

(accum-iter addition null-add square a-filt 0 dec 10); should be 88


;b

(define (accumulator combiner null-term term filter a next b)
  (if (> a b)
      null-term
      (combiner (term (filter null-term a b)) (accumulator combiner null-term term filter (next a) next b))))
(define (b-filt null n b)
  (if (= (gcd n b) 1)
      n
      null))

(accumulator multiplication null-mult self b-filt 0 inc 10);(* 9 7 3) = 189
