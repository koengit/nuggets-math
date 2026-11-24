---
title: Greatest common divisor
kind: definition
groups: [topics/number-theory]
requires: [divisibility]
next: [euclids-algorithm, pulverizer]
---
Which divisors do $a$ and $b$ have in common? For $12$ and $18$:
$$ \text{divisors of } 12 = \{1, 2, 3, 4, 6, 12\}, \qquad \text{divisors of } 18 = \{1,2,3,6,9,18\}, $$
common divisors: $\{1, 2, 3, 6\}$. The largest one is the **greatest common divisor**: $\gcd(12, 18) = 6$.

$$ \gcd(a, b) = \text{the largest } d \in \N \text{ with } d \mid a \text{ and } d \mid b . $$

If $\gcd(a, b) = 1$, we say $a$ and $b$ are **relatively prime** (coprime).

**Properties** (for $a, b, c \in \N$):

- $\gcd(a, b) = \gcd(b, a)$ (commutative)
- $\gcd(a, \gcd(b, c)) = \gcd(\gcd(a, b), c)$ (associative)
- $\gcd(0, a) = a$ for $a \ne 0$ (everything divides 0)
- $\gcd(a, a) = a$ for $a \ne 0$
- $\gcd(a, 1) = 1$
- $\gcd(a + b, b) = \gcd(a, b)$ — e.g. $\gcd(15, 5) = \gcd(10, 5)$. *Why:* if $d \mid b$, then $d \mid a+b \iff d \mid a$, so $a+b, b$ have exactly the same common divisors as $a, b$.

$\gcd(0, 0)$ is not well defined (every number divides 0): we avoid it.

The last property is the key to computing gcds quickly: [[euclids-algorithm]].
