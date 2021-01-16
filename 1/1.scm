; what is the result printed by the interpreter for
; each of the expressions

10
; 10

(+ 5 4 3)
; 12

(- 9 1)
; 8

(/ 6 2)
; 3

(+ (* 2 4) (- 4 6))
; + 8 -2 => 6

(define a 3)
; nil; a = 3

(define b (+ a 1))
; nil; b = 4

(+ a b (* a b))
; + 3 4 12 => 19

(= a b)
; #f

(if (and (> b a) (< b (* a b)))
    b
    a)
; 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7))
      (else 25))
; 13

(+ 2 (if (> b a) b a))
; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; 16