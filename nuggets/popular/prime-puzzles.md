---
title: "Puzzles: when are p² − q² and a² + b² prime?"
kind: exercise
groups: [topics/number-theory]
requires: [primes, case-splitting]
---
(a) I am thinking of two primes $p$ and $q$, and tell you that $p^2 - q^2$ is also prime. Do you know which $p$ and $q$ I am thinking of?

(b) I am thinking of two natural numbers $a$ and $b$, and tell you that $a \cdot b$ is prime and $a^2 + b^2$ is prime. Do you know $a$ and $b$?

## Answer

Two useful observations: (1) **factors and addition don't mix well** — rewrite sums and differences as products when you can; (2) **if a product $A \cdot B$ is prime** (with $A, B \ge 1$), then $A = 1$ or $B = 1$.

(a) $p^2 - q^2 = (p+q)(p-q)$. This is prime, so (since $p + q > 0$, also $p - q > 0$) one factor is 1. $p + q = 1$ is impossible for primes $p, q \ge 2$. So $p - q = 1$: $p = q + 1$. Two consecutive numbers: one is even. If $p$ is even, $p = 2$ and $q = 1$, not a prime. So $q$ is even: $q = 2$, $p = 3$. Indeed $9 - 4 = 5$ is prime. **The only possibility: $p = 3$, $q = 2$.**

(b) $a \cdot b$ prime, so $a = 1$ or $b = 1$. Say $a = 1$ (the other case is symmetric). Then $b$ is prime and $b^2 + 1$ is prime. If $b$ is odd, $b^2 + 1$ is even and $\ge 10$, so not prime. So $b = 2$, and $b^2 + 1 = 5$ is prime. ✓ **Two possibilities: $(a, b) = (1, 2)$ or $(2, 1)$.** So you don't know for sure — but almost.
