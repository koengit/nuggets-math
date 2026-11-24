---
title: Euclid's lemma
kind: theorem
groups: [topics/number-theory]
requires: [primes, pulverizer, case-splitting]
next: [prime-divides-product-of-primes, fundamental-theorem-of-arithmetic]
---
**Lemma (Euclid).** If $p$ is prime, $a, b \in \Z$, and $p \mid a \cdot b$, then $p \mid a$ or $p \mid b$.

Examples: $3 \mid 30 = 5 \cdot 6$, so $3 \mid 5$ or $3 \mid 6$ (the latter). $5 \mid 45 = 5 \cdot 9$, and indeed $5 \mid 5$.

The lemma is **false for non-primes**: $6 \mid 60 = 4 \cdot 15$, but $6 \nmid 4$ and $6 \nmid 15$. (The factors 2 and 3 of 6 got split over 4 and 15.)

**Proof.** Assume $p \mid ab$. Case split on whether $p \mid a$.

*Case 1:* $p \mid a$. Then $p \mid a$ or $p \mid b$. Done.

*Case 2:* $p \nmid a$. Since the only positive divisors of $p$ are $1$ and $p$, $\gcd(p, a) = 1$. By the [[pulverizer]] there are $u, v$ with
$$ p u + a v = 1. $$
Multiply by $b$:
$$ p u b + a b v = b. $$
Now $p \mid pub$, and $p \mid abv$ (because $p \mid ab$). So $p$ divides the sum, which is $b$. $\square$
