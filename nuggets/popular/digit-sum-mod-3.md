---
title: "A number is congruent to its digit sum modulo 3 (and 9)"
kind: theorem
groups: [topics/number-theory, topics/induction]
requires: [strong-induction, modular-arithmetic-rules]
see-also: [digit-sum-minimal-counterexample]
next: [missing-digit]
---
Let $S(n)$ be the sum of the decimal digits of $n$. We want: $3 \mid n \iff 3 \mid S(n)$. It is easier to prove something **stronger**:

**Theorem.** For all $n \in \N$: $S(n) \equiv n \pmod 3$.

(The stronger statement is easier because it can be used as an induction hypothesis: we know *what* $S(n)$ is modulo 3, not just whether it is 0.)

We use two properties of $S$, which together could serve as its definition:

1. $S(d) = d$, for digits $0 \le d \le 9$;
2. $S(10a + d) = S(a) + d$, for $a \ge 1$ and $0 \le d \le 9$ (removing the last digit).

Example: $S(213) = S(21) + 3 = S(2) + 1 + 3 = 6$.

**Proof** by strong induction over $n$. Let $P(n)$ = "$S(n) \equiv n \pmod 3$".

*Base cases:* $P(d)$ for $0 \le d \le 9$: $S(d) = d \equiv d$. ✓

*Step case:* $\big(P(0) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 9$. Write $k + 1 = 10a + d$ with $0 \le d \le 9$; then $1 \le a < k + 1$.
$$
\begin{aligned}
S(k+1) &= S(10a + d) = S(a) + d && \text{[property 2]}\\
&\equiv a + d && \text{[I.H. with } i = a \le k\text{]}\\
&\equiv 10a + d && [10 \equiv 1 \pmod 3]\\
&= k + 1 \pmod 3 .
\end{aligned}
$$
$\square$

This is not simple induction: we use $P(a)$ for $a \approx (k+1)/10$, not $P(k)$. Since $10 \equiv 1 \pmod 9$ as well, the same proof shows $S(n) \equiv n \pmod 9$.
