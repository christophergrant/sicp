;Exercise 36

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (display v1);new code
    (newline);""
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(fixed-point cos 1.00)


(define e 2.71828)


(fixed-point (lambda (y) (/ (log 1000) (log y)))
               e);33 steps

(define (average x y)
  (/ (+ x y) 2))

;average dampening
;x = log1000/logx
(define (xlogx)
  (fixed-point (lambda (x) (average x (/ (log 1000) (log x))))
               e));

(xlogx); 9 steps