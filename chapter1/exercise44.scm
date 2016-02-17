;Exercise 44
(define (composition f g)
  (lambda (x) (f (g x))))
(define (repeated f n)
  (if (= n 1)
      f
      (composition f (repeated f (- n 1)))))
(define dx .00001)
(define (smooth f)
  (lambda (x)
  (/ (+ (f (- x dx)) (f x) (f (+ x dx)) 3))))
(define (square x)
  (* x x))
(smooth square)
  
((repeated smooth 10) 3)