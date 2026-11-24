---
title: "Example: Fibonacci numbers are at most 2ⁿ"
kind: example
groups: [topics/induction]
requires: [strong-induction]
---
Define $f : \N \to \N$ by
$$ f(n) = \begin{cases} 1 & n = 0 \\ 1 & n = 1 \\ f(n-1) + f(n-2) & n \ge 2 \end{cases} $$
(the Fibonacci numbers $1, 1, 2, 3, 5, 8, 13, \ldots$).

**To prove:** $f(n) \le 2^n$ for all $n \in \N$.

**Simple induction gets stuck.** Assuming only $f(k) \le 2^k$, we must show $f(k+1) = f(k) + f(k-1) \le 2^{k+1}$. We know something about $f(k)$, but nothing about $f(k-1)$!

**Proof** by strong induction over $n$. Let $P(n)$ = "$f(n) \le 2^n$".

*Base case 1:* $P(0)$: $f(0) = 1 \le 1 = 2^0$. OK.

*Base case 2:* $P(1)$: $f(1) = 1 \le 2 = 2^1$. OK.

*Step case:* $\big(P(0) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 1$. Assume (I.H.) $f(i) \le 2^i$ for all $0 \le i \le k$. Since $k + 1 \ge 2$:
$$
\begin{aligned}
f(k+1) &= f(k) + f(k-1) && \text{[def } f\text{]} \\
&\le 2^k + 2^{k-1} && \text{[I.H. with } i = k \text{ and } i = k-1\text{]} \\
&\le 2^k + 2 \cdot 2^{k-1} \\
&= 2^k + 2^k = 2^{k+1}.
\end{aligned}
$$
$\square$

Note why the step case starts at $k \ge 1$: for $k = 0$ the definition does not use $f(k-1)$, so that case is covered by base case 2 instead.
