---
title: "Exercise: 8ⁿ − 3ⁿ is divisible by 5"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [how-to-write-induction-proofs, divisibility]
---
Show that $8^n - 3^n$ is divisible by 5, for all $n \ge 1$.

## Answer

**Proof** by simple induction over $n$. Let $P(n)$ = "$5 \mid 8^n - 3^n$".

*Base case:* $P(1)$: $8 - 3 = 5$, divisible by 5.

*Step case:* $P(k) \Rightarrow P(k+1)$, for $k \ge 1$.

- *Assume* (I.H.): $5 \mid 8^k - 3^k$.
- *Show:* $5 \mid 8^{k+1} - 3^{k+1}$.

$$
\begin{aligned}
8^{k+1} - 3^{k+1} &= 8 \cdot 8^k - 3 \cdot 3^k \\
&= (5 + 3) \cdot 8^k - 3 \cdot 3^k \\
&= 5 \cdot 8^k + 3 \cdot (8^k - 3^k).
\end{aligned}
$$
This is divisible by 5: $5 \cdot 8^k$ obviously is, and $3 \cdot (8^k - 3^k)$ is by the I.H. $\square$

*Alternative, without induction:* $8 \equiv 3 \pmod 5$, so $8^n \equiv 3^n \pmod 5$ ([[modular-arithmetic]]).
