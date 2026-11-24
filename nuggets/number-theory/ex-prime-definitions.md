---
title: "Exercise: the two definitions of prime are equivalent"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [primes, proof-by-contradiction]
---
Show that the two definitions in [[primes]] are equivalent:

(a) $p \in \N$, $p \ge 2$, and the only divisors of $p$ are $1$ and $p$.
(b) $p \in \N$, $p \ge 2$, and there are no natural numbers $a, b \ge 2$ with $p = a \cdot b$.

## Answer

We show both directions, each by contradiction. Throughout, $p \ge 2$ and "divisor" means positive divisor.

**(a) $\Rightarrow$ (b).** Assume (a), and suppose (b) fails: $p = ab$ with $a, b \ge 2$. Then $a$ is a divisor of $p$. Also $a \ne 1$ (since $a \ge 2$) and $a \ne p$ (since $b \ge 2$ gives $a = p/b \le p/2 < p$). So $a$ is a divisor other than $1$ and $p$, contradicting (a).

**(b) $\Rightarrow$ (a).** Assume (b), and suppose (a) fails: $p$ has a divisor $a$ with $a \ne 1$ and $a \ne p$. Let $b = p / a$, a natural number. Then $a \ge 2$; and $b \ne 1$ (else $a = p$) and $b \ne 0$, so $b \ge 2$. So $p = ab$ with $a, b \ge 2$, contradicting (b). $\square$
