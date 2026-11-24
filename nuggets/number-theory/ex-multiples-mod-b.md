---
title: "Exercise: the remainders of 0·a, 1·a, …, (b−1)·a modulo b"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [multiplicative-inverse]
see-also: [fermats-little-theorem]
---
Let $a, b$ be positive natural numbers with $\gcd(a, b) = 1$, and consider
$$ S = \{ (k \cdot a) \bmod b \mid k \in \{0, \ldots, b-1\} \} $$
where $p \bmod q$ is the remainder of dividing $p$ by $q$ (e.g. $9 \bmod 3 = 0$, $9 \bmod 7 = 2$).

(a) How many elements does $S$ have? Explain.
(b) What happens when $\gcd(a,b) \ne 1$? Try it for specific $a$ and $b$.

## Answer

(a) **$b$ elements**: every $k$ gives a different remainder (so $S = \{0, 1, \ldots, b-1\}$).

Suppose $k_1$ and $k_2$ give the same result: $k_1 a \equiv k_2 a \pmod b$. Then $b \mid (k_1 - k_2) a$. Since $\gcd(a, b) = 1$, $b \mid k_1 - k_2$ (cancel $a$, [[multiplicative-inverse]]). But $0 \le k_1, k_2 < b$, so $|k_1 - k_2| < b$, and the only multiple of $b$ in that range is 0: $k_1 = k_2$.

(b) Fewer elements. For $a = 2$, $b = 4$: the remainders are $0, 2, 0, 2$, so $S = \{0, 2\}$. In general, $S$ consists of the $b/\gcd(a,b)$ multiples of $\gcd(a, b)$.

This is the key step in the proof of [[fermats-little-theorem]].
