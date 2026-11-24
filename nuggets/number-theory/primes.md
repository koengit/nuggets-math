---
title: Prime numbers
kind: definition
groups: [topics/number-theory]
requires: [divisibility]
next: [ex-prime-definitions, euclids-lemma, prime-factorization-exists]
---
A **prime number** (Swedish: *primtal*) is a natural number that has (almost) no divisors. There are two common definitions:

(a) $p \in \N$, $p \ge 2$, and the only (positive) divisors of $p$ are $1$ and $p$.

(b) $p \in \N$, $p \ge 2$, and there are no $a, b \in \N$ with $a \ge 2$, $b \ge 2$ and $p = a \cdot b$.

They are equivalent ([[ex-prime-definitions]]). The primes are $2, 3, 5, 7, 11, 13, 17, \ldots$; there are infinitely many. Note that 1 is *not* a prime (otherwise prime factorization would not be unique: $6 = 2 \cdot 3 = 1 \cdot 2 \cdot 3$).

**Example.** If $p$ and $q$ are primes and $p \mid q$, then $p = q$: the divisors of $q$ are $1$ and $q$, and $p \ne 1$.
