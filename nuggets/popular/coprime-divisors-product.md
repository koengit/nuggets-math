---
title: "Lemma: if p | n and q | n for different primes, then pq | n"
kind: theorem
groups: [topics/number-theory]
requires: [euclids-lemma]
see-also: [chinese-remainder-theorem]
---
**Lemma.** If $p \ne q$ are primes, $p \mid n$ and $q \mid n$, then $p \cdot q \mid n$.

**Proof.** Since $p \mid n$, $n = a \cdot p$ for some $a$. Since $q \mid n = a \cdot p$, by [[euclids-lemma]] $q \mid a$ or $q \mid p$.

- $q \mid p$ is impossible: $p$ is prime, so its only divisors are 1 and $p$, and $q \ne 1$, $q \ne p$.
- So $q \mid a$: $a = b \cdot q$. Then $n = a \cdot p = b \cdot (p \cdot q)$, so $p q \mid n$. $\square$

Example: $2 \mid n$ and $3 \mid n$ give $6 \mid n$.

**Careful — this needs $p, q$ different primes** (or at least $\gcd(p,q) = 1$): $2 \mid 2$ and $2 \mid 2$ but $4 \nmid 2$; and $4 \mid 12$ and $6 \mid 12$, but $24 \nmid 12$.

This lemma is what makes the last step of the [[rsa]] correctness proof work: $a \equiv b \pmod p$ and $a \equiv b \pmod q$ give $a \equiv b \pmod{pq}$.
