; Exercise 12

(define (pasc-elem row col)
  (cond ((or (> col row)
             (< col 1)) 0)
        ((or (= col 1)
             (= col row)) 1)
        (else (+ (pasc-elem (- row 1) (- col 1))
                 (pasc-elem (- row 1) col)))))
(pasc-elem 3 2)

      