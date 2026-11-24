---
title: √2 is irrational
kind: theorem
groups: [topics/proofs, topics/number-theory]
requires: [proof-by-contradiction]
see-also: [sqrt2-irrational-strong-induction]
---
**Theorem.** $\sqrt{2}$ is not a rational number.

**Proof.** By contradiction. Assume that $\sqrt 2$ is rational.

1. Any rational number can be written as $a/b$ with natural numbers $a, b$ ($b \ge 1$) that have no common divisor other than 1, i.e. $\gcd(a,b) = 1$ (divide away common factors).
2. So by our assumption, $\sqrt2 = a/b$ with $\gcd(a,b) = 1$.
3. Then
$$ \sqrt 2 = \frac ab \;\Rightarrow\; 2 = \frac{a^2}{b^2} \;\Rightarrow\; 2b^2 = a^2 .$$
So $a^2$ is even, which means that $a$ is even (the square of an odd number is odd). Write $a = 2c$:
$$ 2b^2 = (2c)^2 = 4c^2 \;\Rightarrow\; b^2 = 2c^2 .$$
So $b^2$ is even, and therefore $b$ is even.
4. So both $a$ and $b$ are even, which contradicts $\gcd(a,b) = 1$.
5. Hence our assumption was false: $\sqrt 2$ is not rational. $\square$

For a proof that does not need the "divide away common factors" step, see [[sqrt2-irrational-strong-induction]].
