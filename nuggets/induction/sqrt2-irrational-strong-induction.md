---
title: "Alternative proof: √2 is irrational, by strong induction"
kind: proof
groups: [topics/induction, topics/number-theory]
requires: [strong-induction, sqrt2-irrational]
---
The usual proof ([[sqrt2-irrational]]) starts by writing a fraction "in lowest terms". Here is a proof that avoids that, by strong induction on the numerator.

**To prove:** for all $n \ge 0$ and all $p \ge 1$ in $\N$: $\sqrt 2 \ne n/p$.

**Proof.** By strong induction over $n$. Let $P(n)$ = "for all $p \ge 1$: $\sqrt2 \ne n/p$".

*Base case:* $P(0)$: $0/p = 0 \ne \sqrt 2$. OK.

*Step case:* $\big(P(0) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 0$. We show $\sqrt 2 \ne \frac{k+1}{p}$ for every $p \ge 1$, by contradiction: suppose $\sqrt2 = \frac{k+1}{p}$ for some $p \ge 1$.

1. Since $\sqrt2 > 1$, we have $k + 1 > p$, i.e. $p < k+1$.
2. Squaring: $2 = \frac{(k+1)^2}{p^2}$, so $(k+1)^2 = 2p^2$.
3. So $(k+1)^2$ is even, hence $k+1$ is even. Write $k + 1 = 2m$.
4. Then $(2m)^2 = 2p^2$, so $4m^2 = 2p^2$, so $p^2 = 2m^2$.
5. Since $m \ge 1$, this means $2 = \frac{p^2}{m^2}$, i.e. $\sqrt 2 = \frac{p}{m}$. We have found a new way of writing $\sqrt2$ as a fraction!
6. The new numerator $p$ is smaller than the old one: $0 \le p < k+1$, so $p \le k$.
7. But by the I.H. $P(p)$ holds, which says $\sqrt2 \ne p/m$. Contradiction.

So $\sqrt2 \ne \frac{k+1}{p}$. $\square$

This is the method of **infinite descent**: from a solution we construct a strictly smaller one, which is impossible for natural numbers.
