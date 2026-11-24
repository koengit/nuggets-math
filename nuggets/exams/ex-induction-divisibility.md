---
title: "Exercise: divisibility by induction"
kind: exercise
groups: [topics/induction, exams/old-exams]
requires: [how-to-write-induction-proofs, divisibility]
see-also: [ex-induction-divisible]
---
(a) Show by induction that $11^n - 1$ is divisible by 5, for all $n \ge 0$. State your induction hypothesis clearly, and where you use it.

(b) Show that $3^n + 1$ is divisible by 4 for all **odd** natural numbers $n$ (by induction, or any other proof method).

## Hint

(a) Follow [[ex-induction-divisible]]: write $11^{k+1} - 1 = 11 \cdot 11^k - 1$ and split off a multiple of 5 plus something the I.H. covers.

(b) Odd numbers are $1, 3, 5, \ldots$: the step goes from $n$ to $n + 2$. Or use modular arithmetic: what is $3^2$ modulo 4?
