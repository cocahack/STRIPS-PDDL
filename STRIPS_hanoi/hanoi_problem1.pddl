﻿(define (problem problem1)
    (:domain hanoi-of-tower)
    (:objects d1 d2 d3 peg1 peg2 peg3)
    (:init
        (clear d1) (clear peg2) (clear peg3)
        (on d1 d2) (on d2 d3) (on d3 peg1)
        (smaller d1 d2) (smaller d2 d3) (smaller d1 d3)
        (smaller d1 peg1) (smaller d1 peg2) (smaller d1 peg3)
        (smaller d2 peg1) (smaller d2 peg2) (smaller d2 peg3)
        (smaller d3 peg1) (smaller d3 peg2) (smaller d3 peg3)
    )
    (:goal
        (and (clear peg1) (clear peg2) (clear d1) (on d1 d2) (on d2 d3) (on d3 peg3))
    )
)