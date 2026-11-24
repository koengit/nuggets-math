---
title: "Example: fast exponentiation is correct"
kind: example
groups: [topics/induction]
requires: [strong-induction, case-splitting]
---
This function computes $x^n$ with only about $2\log_2 n$ multiplications (it is called `power2` in the introductory functional programming course):
$$ f(x, n) = \begin{cases} 1 & n = 0 \\ x \cdot f(x, n-1) & n \text{ odd} \\ f(x, n/2)^2 & n \text{ even}, n > 0 \end{cases} $$

**To prove:** $f(x, n) = x^n$ for all $n \in \N$ and all $x \in \R$.

**Proof** by strong induction over $n$. Let $P(n)$ = "$\forall x \in \R.\; f(x,n) = x^n$".

*Base case:* $P(0)$: $f(x, 0) = 1 = x^0$. OK.

*Step case:* $\big(P(0) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 0$. Assume (I.H.) $f(x, i) = x^i$ for all $0 \le i \le k$. We split into cases.

*Case 1: $k+1$ odd.*
$$ f(x, k+1) = x \cdot f(x, k) \overset{\text{I.H. } i=k}{=} x \cdot x^k = x^{k+1}. $$

*Case 2: $k+1$ even.* Then $k + 1 \ge 2$, so $i = \frac{k+1}{2}$ satisfies $1 \le i \le k$, and the I.H. applies:
$$ f(x, k+1) = f\big(x, \tfrac{k+1}{2}\big)^2 \overset{\text{I.H. } i=\frac{k+1}2}{=} \big(x^{\frac{k+1}{2}}\big)^2 = x^{k+1}. $$
$\square$

Simple induction would not work here: in case 2 we need $P(\frac{k+1}{2})$, not $P(k)$.
