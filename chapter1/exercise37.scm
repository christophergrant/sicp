;Exercise 37

;a
(define (cont-frac n d k)
  (define (fract i)
    (if (< i k)
        (/ (n i) (+ (d i) (fract (+ i 1))))
        (/ (n i) (d i))))
  (fract 1))


(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           15)

;b

(define (cont-frac2 n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (- i 1) (/ (n i) (+ (d i) result)))))
  (iter (- k 1) (/ (n k) (d k))))

(cont-frac2 (lambda (i) 1.0)
           (lambda (i) 1.0)
           15)