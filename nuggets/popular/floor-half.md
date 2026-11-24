---
title: "Exercise: F(n) = 1 + F(n−2) is n div 2"
kind: exercise
groups: [topics/induction, exams/old-exams]
requires: [strong-induction, case-splitting]
---
$$ F(0) = 0, \qquad F(1) = 0, \qquad F(n) = 1 + F(n-2) \;\; (n > 1) $$
Prove by strong induction that $F(n) = n \operatorname{div} 2$ for all $n \ge 0$ (integer division: $4 \operatorname{div} 2 = 2$, $5 \operatorname{div} 2 = 2$, $7 \operatorname{div} 2 = 3$; also written $\lfloor n/2 \rfloor$).

## Answer

| $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|---|
| $F(n)$ | 0 | 0 | 1 | 1 | 2 | 2 | 3 | 3 |

**Simple induction gets stuck:** in the step from $k$ to $k + 1$ we need $F(k - 1)$, not $F(k)$.

By strong induction over $n$. Let $P(n)$ = "$F(n) = \lfloor n/2 \rfloor$".

*Base cases:* $F(0) = 0 = \lfloor 0/2 \rfloor$ and $F(1) = 0 = \lfloor 1/2 \rfloor$. ✓

*Step case:* $\big(P(0) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 1$. Assume (I.H.) $F(i) = \lfloor i/2 \rfloor$ for $0 \le i \le k$. Since $k+1 > 1$:
$$ F(k+1) = 1 + F(k-1) = 1 + \lfloor (k-1)/2 \rfloor \qquad \text{[def } F\text{; I.H. with } i = k-1\text{]} $$
Case split on the parity of $k - 1$ (the same as the parity of $k+1$):

- $k - 1$ even: $1 + \frac{k-1}{2} = \frac{k+1}{2} = \lfloor \frac{k+1}{2} \rfloor$.
- $k - 1$ odd: $1 + \frac{k-1}{2} - \frac12 = \frac{k+1}{2} - \frac12 = \lfloor \frac{k+1}{2} \rfloor$.

$\square$

*A shorter alternative* (maybe harder to follow): write $\lfloor x/2 \rfloor = \frac x2 - \mathrm{pen}(x)$, where the "penalty" $\mathrm{pen}(x)$ is $0$ for even $x$ and $\frac12$ for odd $x$; it only depends on parity, so $\mathrm{pen}(k-1) = \mathrm{pen}(k+1)$, and $1 + \frac{k-1}2 - \mathrm{pen}(k-1) = \frac{k+1}{2} - \mathrm{pen}(k+1)$.
