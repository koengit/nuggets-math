---
title: "Theorem: every n ≥ 2 has a prime factorization"
kind: theorem
groups: [topics/number-theory, topics/induction]
requires: [strong-induction, primes]
next: [fundamental-theorem-of-arithmetic]
---
To **prime factorize** a number means writing it as a product of one or more primes: $12 = 2 \cdot 2 \cdot 3$.

**Theorem.** Every natural number $n \ge 2$ has a prime factorization.

**Proof** by strong induction over $n$. Let $P(n)$ = "$n$ can be written as a product of primes".

*Base case:* $P(2)$: 2 is prime, so it is a product of one prime.

*Step case:* $\big(P(2) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 2$. Assume (I.H.) that every $i$ with $2 \le i \le k$ has a prime factorization. Case split:

*Case 1: $k+1$ is prime.* Then it is already a product of one prime.

*Case 2: $k+1$ is not prime.* Then $k + 1 = a \cdot b$ with $a, b \ge 2$ (definition (b) of [[primes]]). Then also $a, b \le k$ (as $a = (k+1)/b \le (k+1)/2$). By the I.H. (with $i = a$ and $i = b$):
$$ a = p_1 \cdots p_m, \qquad b = q_1 \cdots q_r $$
so $k + 1 = p_1 \cdots p_m \cdot q_1 \cdots q_r$ is a product of primes. $\square$

Note how strong induction is essential: $a$ and $b$ are smaller than $k+1$, but not equal to $k$.
