---
title: "Diophantine equations: solving ax + by = c"
kind: method
groups: [topics/number-theory]
requires: [pulverizer]
next: [ex-diophantine, chinese-remainder-theorem]
---
A **Diophantine equation** is an equation for which we only want **integer** solutions. For example $5x + 7y = 3$: $x = 0, y = 3/7$ does not count, but $x = 9, y = -6$ does.

(The most famous one is $x^n + y^n = z^n$. Fermat wrote around 1637 that it has no solutions with $x, y, z \ge 1$ for $n > 2$, and that he had "a truly marvellous proof, which this margin is too narrow to contain". It was finally proved by Andrew Wiles in 1994.)

We solve **linear** ones: $a x + b y = c$, with $x, y \in \Z$.

First an observation: $6x + 9y = 7$ has **no** solutions, since the left-hand side is always divisible by 3 and 7 is not. But $6x + 9y = 21$ does: $x = -1, y = 3$. And once we have one solution, we have infinitely many: $x = -1 + 3k$, $y = 3 - 2k$ (e.g. $(2, 1)$, $(8, -3)$).

**Recipe** for $a x + b y = c$:

1. Compute $d = \gcd(a, b)$.
2. If $d \nmid c$: **no solutions** (the left-hand side is always divisible by $d$).
3. Otherwise divide everything by $d$: $a := a/d$, $b := b/d$, $c := c/d$. Now $\gcd(a, b) = 1$.
4. Use the [[pulverizer]] to find $u, v$ with $a u + b v = 1$.
5. **One solution:** $x = u c$, $y = v c$. Check: $a u c + b v c = c(au + bv) = c$.
6. **All solutions:** $x_k = x + k b$, $y_k = y - k a$, for $k \in \Z$. Check: $a(x + kb) + b(y - ka) = ax + akb + by - bka = ax + by = c$.

**Why step 6 gives all solutions.** If $(x, y)$ and $(x', y')$ are both solutions, then $a(x' - x) = b(y - y')$. So $b \mid a(x' - x)$, and since $\gcd(a, b) = 1$, $b \mid x' - x$ (a generalization of [[euclids-lemma]]). Write $x' = x + kb$; then $y' = y - ka$.

The course's [Haskell code](assets/Arithmetic.hs) solves Diophantine equations.
