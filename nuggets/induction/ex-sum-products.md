---
title: "Exercise: 1·2 + 2·3 + … + n(n+1)"
kind: exercise
groups: [topics/induction, topics/sums, exercises/week-3]
requires: [how-to-write-induction-proofs]
---
Show that $1 \cdot 2 + 2 \cdot 3 + 3 \cdot 4 + \dots + n(n+1) = \frac{n(n+1)(n+2)}{3}$, for all $n \ge 1$.

## Answer

**Proof** by simple induction over $n$. Let $P(n)$ = "$1\cdot2 + \dots + n(n+1) = \frac{n(n+1)(n+2)}{3}$".

*Base case:* $P(1)$: $1 \cdot 2 = 2 = \frac{1 \cdot 2 \cdot 3}{3}$. OK.

*Step case:* $P(k) \Rightarrow P(k+1)$, $k \ge 1$. Assume (I.H.) $1\cdot2 + \dots + k(k+1) = \frac{k(k+1)(k+2)}{3}$. Show the formula for $k+1$:
$$
\begin{aligned}
& 1\cdot2 + \dots + k(k+1) + (k+1)(k+2) \\
=\; & \tfrac{k(k+1)(k+2)}{3} + (k+1)(k+2) && \text{[I.H.]}\\
=\; & \tfrac{k(k+1)(k+2) + 3(k+1)(k+2)}{3} \\
=\; & \tfrac{(k+1)(k+2)(k+3)}{3}.
\end{aligned}
$$
$\square$
