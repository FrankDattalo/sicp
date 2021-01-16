; What behavior will be observed if the interpreter is
; applicative order evaluation vs normal order evaluation
; for the following program?

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

; applicative order (evaluate arguments and apply)
; p is a procedure which when applied evaluates the 
; application of itself. It is indefinetly recursive
; and as such the program will continue to loop
; when evaluating the second argument for line 12

; (test 0 (p))

; normal order (fully exand and then reduce)

; (test 0 (p)) ; beginning
; (test 0 (p)) ; argument expansion
; (if (= 0 0) 0 (p)) ; test expansion
; 0