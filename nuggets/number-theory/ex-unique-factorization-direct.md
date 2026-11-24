---
title: "Exercise: unique factorization without Euclid's lemma"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [prime-factorization-exists, proof-by-contradiction]
see-also: [fundamental-theorem-of-arithmetic]
---
There is a direct proof of the uniqueness of prime factorization that does not use gcd or the Pulverizer. Reconstruct it.

Suppose some number has two different prime factorizations; let $N$ be the least such number. One factorization has smallest prime $p$, the other smallest prime $q$, and $p \ne q$:
$$ N = p \cdot A, \qquad N = q \cdot B. $$
We also know that $p \nmid B$ and $q \nmid A$ (why?). Say $q < p$, and look at
$$ M = N - q \cdot A . $$
It turns out that $M$ is (1) smaller than $N$, (2) still positive, and (3) has two different prime factorizations — contradicting the minimality of $N$.

(a) Show (1), (2), (3). (b) Write down the complete proof.

## Answer

**Setup.** Let $N$ be the least natural number with two different prime factorizations $F_1$ and $F_2$. Every number smaller than $N$ (and $\ge 2$) has exactly one factorization.

*$F_1$ and $F_2$ have no prime in common.* If some prime $r$ occurred in both, removing it from both would give two different factorizations of $N / r < N$. So in particular $p \ne q$.

*Why $p \nmid B$:* $B = N/q < N$, so $B$ has a unique factorization, namely $F_2$ without one $q$. That factorization does not contain $p$ (as $F_2$ does not). If $p \mid B$, then $B = p \cdot B'$, and factorizing $B'$ would give a factorization of $B$ containing $p$ — a second factorization of $B$. Contradiction. In the same way $q \nmid A$, where $A = N/p$.

**(1) $M < N$:** $M = N - qA$ and $qA > 0$.

**(2) $M > 0$:** $M = pA - qA = (p - q) A$, and $p > q$, $A \ge 1$.

**(3) $M$ has two different factorizations.** We have two ways to write $M$:
$$ M = (p - q) \cdot A \qquad\text{and}\qquad M = qB - qA = q \cdot (B - A). $$
From (2), $B - A > 0$, so $M \ge q \ge 2$. Factorizing $B - A$ and putting $q$ in front gives a factorization of $M$ **containing $q$**. Factorizing $p - q$ (if it is $> 1$) and $A$ gives a factorization of $M$ **without $q$**: $q \nmid A$ (shown above), and $q \nmid p - q$ (otherwise $q \mid p$, impossible for the prime $p \ne q$), so — by the uniqueness of factorizations of these numbers smaller than $N$ — $q$ appears in neither.

So $2 \le M < N$ has two different factorizations, contradicting the minimality of $N$. $\square$
