---
title: "Exercise: 3ⁿ ≤ n! for n ≥ 7"
kind: exercise
groups: [topics/induction]
requires: [simple-induction, inequational-reasoning]
---
Show that $3^n \le n!$ for all $n \ge 7$. (Note: $3^6 = 729 > 720 = 6!$.)

## Answer

By simple induction over $n$. Let $P(n)$ = "$3^n \le n!$".

*Base case:* $P(7)$: $3^7 = 2187 \le 5040 = 7!$. ✓

*Step case:* $P(k) \Rightarrow P(k+1)$, for $k \ge 7$. Assume (I.H.) $3^k \le k!$.
$$
\begin{aligned}
3^{k+1} &= 3 \cdot 3^k \\
&\le 3 \cdot k! && \text{[I.H.]}\\
&\le (k+1) \cdot k! && [3 \le k + 1 \text{ since } k \ge 7]\\
&= (k+1)! && \text{[def } !\text{]}
\end{aligned}
$$
$\square$
