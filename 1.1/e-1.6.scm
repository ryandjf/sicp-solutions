#lang racket

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

; if we replace if with new-if, the procedure will ends up in recursion.
; (if <predicate> <consequent> <alternative>)
; To evaluate an if expression (if is a special form), the interpreter starts 
; by evaluating the <predicate> part of the expression. If the <predicate> evaluates
; to be a true value, the interpreter then evaluates the <consequent> and returns its value.
; Otherwise it evalutes the <alternative> and return its value.
; If we replace if with procedure new-if, the <then-clause> and <else-clause> will be evaluated
; when passed into, which cause infinate recursion.
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
    (average guess (/ x guess)))

(define (square x) (* x x))

(define (abs x) (if (< x 0) (- x) x))

(define (average x y) (/ (+ x y) 2.0))

(sqrt 16)
