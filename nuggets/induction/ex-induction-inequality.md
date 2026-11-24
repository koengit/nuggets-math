---
title: "Exercise: 4n < 2ⁿ for n ≥ 5"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [how-to-write-induction-proofs, inequational-reasoning]
---
Show by induction that $4n < 2^n$ for all $n \ge 5$. (This can also be shown in other ways. How? Be rigorous!)

## Answer

**Proof** by simple induction over $n$. Let $P(n)$ = "$4n < 2^n$".

*Base case:* $P(5)$: $4 \cdot 5 = 20 < 32 = 2^5$. OK.

*Step case:* $P(k) \Rightarrow P(k+1)$, for $k \ge 5$. Assume (I.H.) $4k < 2^k$. Show $4(k+1) < 2^{k+1}$:
$$
\begin{aligned}
4(k+1) &= 4k + 4 \\
&< 2^k + 4 && \text{[I.H.]} \\
&< 2^k + 2^k && [4 < 2^k \text{ since } k \ge 5 > 2] \\
&= 2^{k+1}.
\end{aligned}
$$
$\square$
