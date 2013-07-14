#lang racket

(define (sqrt x)
    (sqrt-iter 1.1 1.0 x))

(define (sqrt-iter last-guess guess x)
    (if (good-enough? last-guess guess)
        guess
        (sqrt-iter guess (improve guess x) x)))

(define (good-enough? last-guess guess)
    (< (/ (abs (- last-guess guess)) last-guess) 0.001))

(define (improve guess x)
    (average guess (/ x guess)))

(define (square x) (* x x))

(define (abs x) (if (< x 0) (- x) x))

(define (average x y) (/ (+ x y) 2.0))

(sqrt 16)
