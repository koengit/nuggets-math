---
title: Euclid's algorithm
kind: method
groups: [topics/number-theory]
requires: [gcd, invariants]
next: [pulverizer]
---
To compute $\gcd(a, b)$: **repeatedly subtract the smaller number from the larger**, until one of them becomes 0 (or the two become equal). Then the other number is the gcd.

| $a$ | $b$ | | $a$ | $b$ | | $a$ | $b$ |
|---|---|---|---|---|---|---|---|
| 25 | 10 | | 12 | 18 | | 11 | 17 |
| 15 | 10 | | 12 | 6 | | 11 | 6 |
| 5 | 10 | | 6 | 6 | | 5 | 6 |
| 5 | 5 | | 0 | 6 | | 5 | 1 |
| $\gcd = 5$ | | | $\gcd = 6$ | | | $\gcd = 1$ | |

**Why it works:** it is a step system with the **invariant** "$\gcd(x, y) = \gcd(a, b)$", where $(x,y)$ is the current row. It holds initially, and is preserved because $\gcd(x - y, y) = \gcd(x, y)$ ([[gcd]]). At the end we use $\gcd(x, x) = x$, $\gcd(0, x) = x$ or $\gcd(x, 1) = 1$.

Instead of subtracting $y$ several times, we can replace $x$ by the remainder $x \bmod y$ in one go; that is the version usually programmed.

The method appears in Euclid's *Elements* (around 300 BC), a book that also set the standard for logic and proof in mathematics. It is one of the oldest algorithms still in use.
