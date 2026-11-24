---
title: "Exercise: recurrences that only hold for even or odd n"
kind: exercise
groups: [topics/induction, exams/old-exams]
requires: [strong-induction]
---
(a) $f(0) = 1$ and $f(n) = 3 - f(n-1)$ for $n \ge 1$. Show by (simple or strong) induction that $f(n) = 1$ for all **even** natural numbers $n$.

(b) $f(0) = 0$ and $f(n) = n - f(n-1)$ for $n \ge 1$. Show by induction that $f(n) = \frac{n+1}{2}$ for all **odd** natural numbers $n$.

State your induction hypothesis clearly, and where you use it.

## Hint

Compute the first few values. The statement is only about every *second* number, so a natural step case goes from $n$ to $n + 2$ (unfold the definition twice). Make sure your base case and step together reach exactly the numbers in the statement.
