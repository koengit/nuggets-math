---
title: "Exercise: the n-th derivative of xⁿ is n!"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [how-to-write-induction-proofs, derivative-of-power]
---
Show that the $n$-th derivative of $x^n$ is $n!$, for all $n \ge 1$.

## Answer

**Proof** by simple induction over $n$. Let $P(n)$ = "the $n$-th derivative of $x^n$ is $n!$".

*Base case:* $P(1)$: the derivative of $x^1$ is $1 = 1!$. OK.

*Step case:* $P(k) \Rightarrow P(k+1)$, for $k \ge 1$. Assume (I.H.) that the $k$-th derivative of $x^k$ is $k!$. Then

- the $(k+1)$-th derivative of $x^{k+1}$
- $=$ the $k$-th derivative of $(k+1) x^k$ (take one derivative first: [[derivative-of-power]])
- $=$ $(k+1) \cdot$ the $k$-th derivative of $x^k$ (constants move out of derivatives)
- $=$ $(k+1) \cdot k!$ (I.H.)
- $=$ $(k+1)!$. $\square$
