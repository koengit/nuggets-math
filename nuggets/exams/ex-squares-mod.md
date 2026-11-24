---
title: "Exercise: which squares are possible modulo m?"
kind: exercise
groups: [topics/number-theory, exams/old-exams]
requires: [modular-arithmetic-rules, case-splitting]
---
(a) Which integers $n$ satisfy $n^2 \equiv 3 \pmod 4$?
(b) True or false: there is an integer $n$ with $n^2 \equiv 5 \pmod 6$.

## Hint

Every integer is congruent to one of $0, 1, \ldots, m-1$ modulo $m$, and $n^2 \bmod m$ only depends on $n \bmod m$ ([[modular-arithmetic-rules]]). So a case split over the $m$ remainders tells you all possible squares.
