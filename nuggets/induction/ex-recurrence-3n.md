---
title: "Exercise: f(n) = f(n−1) + 6f(n−2) is 3ⁿ"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [strong-induction]
---
$$ f(n) = \begin{cases} 1 & n = 0 \\ 3 & n = 1 \\ f(n-1) + 6 f(n-2) & n > 1 \end{cases} $$
Prove that $f(n) = 3^n$ for all $n \in \N$.

## Answer

**Proof** by strong induction over $n$. Let $P(n)$ = "$f(n) = 3^n$".

*Base cases:* $P(0)$: $f(0) = 1 = 3^0$. $P(1)$: $f(1) = 3 = 3^1$.

*Step case:* $\big(P(0) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 1$. Assume (I.H.) $f(i) = 3^i$ for $0 \le i \le k$. Since $k + 1 > 1$:
$$
\begin{aligned}
f(k+1) &= f(k) + 6 f(k-1) && \text{[def } f\text{]}\\
&= 3^k + 6 \cdot 3^{k-1} && \text{[I.H. with } i = k \text{ and } i = k-1\text{]}\\
&= 3^k + 2 \cdot 3^k = 3 \cdot 3^k = 3^{k+1}.
\end{aligned}
$$
$\square$
