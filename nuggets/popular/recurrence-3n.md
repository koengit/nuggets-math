---
title: "Exercise: F(n) = F(n−2) + 6 is 3n"
kind: exercise
groups: [topics/induction, exams/old-exams]
requires: [strong-induction]
see-also: [floor-half]
---
$$ F(0) = 0, \qquad F(1) = 3, \qquad F(n) = F(n-2) + 6 \;\; (n > 1) $$
Prove by (strong) induction that $F(n) = 3n$ for all $n \ge 0$.

## Answer

By strong induction over $n$. Let $P(n)$ = "$F(n) = 3n$".

*Base cases:* $P(0)$: $F(0) = 0 = 3 \cdot 0$. $P(1)$: $F(1) = 3 = 3 \cdot 1$. ✓

*Step case:* $\big(P(0) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 1$. Assume (I.H.) $F(i) = 3i$ for $0 \le i \le k$.
$$
\begin{aligned}
F(k+1) &= F(k-1) + 6 && \text{[def } F\text{, since } k+1 > 1\text{]}\\
&= 3(k-1) + 6 && \text{[I.H. with } i = k-1\text{]}\\
&= 3k + 3 = 3(k+1).
\end{aligned}
$$
$\square$
