---
title: "The Pulverizer: finding u, v with au + bv = gcd(a,b)"
kind: method
groups: [topics/number-theory]
requires: [euclids-algorithm]
next: [euclids-lemma, diophantine-equations, multiplicative-inverse]
---
**Theorem (Bézout).** If $a, b \in \N^+$ and $\gcd(a, b) = 1$, there are $u, v \in \Z$ with
$$ a \cdot u + b \cdot v = 1 . $$
(More generally, there are $u, v$ with $au + bv = \gcd(a,b)$.)

For example $7u + 10v = 1$ has the solutions $(u, v) = (3, -2)$, $(-7, 5)$, … How do we find one?

**The Pulverizer** (the name used in the MCS book; also called the *extended Euclidean algorithm*) runs [[euclids-algorithm]] and keeps track of how each number is made from the original $A$ and $B$. The state is $(u, v, a, b, u', v')$ with the **invariants**
$$ a = u \cdot A + v \cdot B \qquad\text{and}\qquad b = u' \cdot A + v' \cdot B . $$
Initially $(u, v, a, b, u', v') = (1, 0, A, B, 0, 1)$. When Euclid subtracts $b$ from $a$, we also subtract $(u', v')$ from $(u, v)$; and the other way around. Both invariants are preserved.

**Example:** $A = 7$, $B = 10$.

| $u$ | $v$ | $a$ | $b$ | $u'$ | $v'$ | |
|---|---|---|---|---|---|---|
| 1 | 0 | 7 | 10 | 0 | 1 | start |
| 1 | 0 | 7 | 3 | −1 | 1 | $b := b - a$ |
| 2 | −1 | 4 | 3 | −1 | 1 | $a := a - b$ |
| 3 | −2 | **1** | 3 | −1 | 1 | $a := a - b$ |

We reached $a = 1$, so by the invariant: $7 \cdot 3 + 10 \cdot (-2) = 1$. ✓

**Example:** $A = 23$, $B = 29$.

| $u$ | $v$ | $a$ | $b$ | $u'$ | $v'$ |
|---|---|---|---|---|---|
| 1 | 0 | 23 | 29 | 0 | 1 |
| 1 | 0 | 23 | 6 | −1 | 1 |
| 2 | −1 | 17 | 6 | −1 | 1 |
| 3 | −2 | 11 | 6 | −1 | 1 |
| 4 | −3 | 5 | 6 | −1 | 1 |
| 4 | −3 | 5 | **1** | −5 | 4 |

So $23 \cdot (-5) + 29 \cdot 4 = -115 + 116 = 1$. ✓

The course's [Haskell code](assets/Arithmetic.hs) implements the Pulverizer; use it to check your answers.
