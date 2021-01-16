; Describe the behavior of the following procedure
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; this procedure add a and the absolute value value of b
; it does this by checking wither b is > 0 and if so applies
; the + procedure to a and b.
; otherwise the - procedure will be apllied to a and b
; the if statement evaluates conditionally to either the + or -
; procedure depending on whether b is positive or negative