(define (square x) (* x x))

(define (square-sum x y)
    (+ (square x) (square y)))

(define (is-greater-than-both x other1 other2)
    (and (> x other1) (> x other2)))

(define (sum-of-squares-two-smallest x y z)
    (cond
        ((is-greater-than-both x y z) (square-sum y z)) ; x > y, x > z
        ((is-greater-than-both y x z) (square-sum x z)) ; y > x, y > z
        ((is-greater-than-both z x y) (square-sum x y)) ; z > x, z > y
        (else (square-sum x y)))) ; they're all equal