---
title: "Exercises: 2ⁿ + 3ⁿ < 4ⁿ, and a sum of all previous values"
kind: exercise
groups: [topics/induction, assignments/assignment-3]
requires: [simple-induction, strong-induction]
---
*(Assignment questions; no answers are published.)*

**1.** Consider the proposition $2^n + 3^n < 4^n$ about a natural number $n$.
(a) Is it true for $n = 0, 1, 2, 3$? (b) Prove by simple induction that it holds for all $n \ge 2$.

**2.** Let $F(0) = 1$ and $F(n) = \sum_{i=0}^{n-1} F(i)$ for $n > 0$ (each value is the sum of all previous values).
(a) Compute $F(0), \ldots, F(5)$ from the definition. (b) For which of these is $F(n) = 2^{n-1}$? (c) Prove by induction that $F(n) = 2^{n-1}$ for $n \ge 1$.
