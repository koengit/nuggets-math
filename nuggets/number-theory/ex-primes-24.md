---
title: "Exercise: 24 divides p² − 1 for primes p > 3"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [case-splitting, divisibility]
---
Show that if $p$ is a prime number $> 3$, then $24 \mid p^2 - 1$.

*Hint:* case split on the remainder of $p$ when divided by 6.

## Answer

Case split on $p \bmod 6$.

- $p \equiv 0, 2, 3, 4 \pmod 6$: then $p$ is divisible by 6, 2, 3 and 2 respectively, and since $p > 3$, $p$ is not prime. These cases are impossible.
- $p \equiv 1 \pmod 6$: $p = 6k + 1$. Then $p^2 - 1 = (p+1)(p-1) = (6k + 2) \cdot 6k = 12 k (3k + 1)$. Either $k$ is even, or $k$ is odd and then $3k + 1$ is even; so $2 \mid k(3k+1)$, and $24 \mid 12 k (3k+1)$.
- $p \equiv 5 \pmod 6$: $p = 6k - 1$. Then $p^2 - 1 = 6k \cdot (6k - 2) = 12 k (3k - 1)$. Either $k$ is even or $3k - 1$ is even; so $24 \mid 12k(3k-1)$. $\square$
