#lang racket
(define (sum-of-two-larger-num-in-three-num x y z) (cond ((and (< x y) (< x z)) (+ y z)) ((and (< y x) (< y z)) (+ x z)) (else (+ x y))))
(sum-of-two-larger-num-in-three-num 2 3 4)
(sum-of-two-larger-num-in-three-num 3 2 4)
(sum-of-two-larger-num-in-three-num 3 4 2)
