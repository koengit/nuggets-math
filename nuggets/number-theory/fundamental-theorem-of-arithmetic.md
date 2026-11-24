---
title: The fundamental theorem of arithmetic
kind: theorem
groups: [topics/number-theory]
requires: [prime-factorization-exists, prime-divides-product-of-primes, proof-by-contradiction]
see-also: [ex-unique-factorization-direct]
---
The natural numbers have two kinds of structure.

- With $0$, $1$ and $+$ we can build all natural numbers: $7 = 1+1+1+1+1+1+1$, in a unique way (up to the order of the terms). That is what induction is about.
- With $0$, $1$, $\cdot$ and **all the primes** (infinitely many building blocks), we can build all natural numbers too. Is that also unique?

**Theorem (fundamental theorem of arithmetic).** Every natural number $n \ge 2$ can be written as a product of primes **in exactly one way** (up to the order of the factors).

(A *theorem* is an important proved result; a *lemma* is a smaller result mainly used to prove something else.)

**Existence** is [[prime-factorization-exists]].

**Uniqueness.** By contradiction. Suppose some number has two different prime factorizations, and let $N$ be the **smallest** such number:
$$ N = p_1 \cdots p_n = q_1 \cdots q_m \qquad \text{(different factorizations)}. $$
Since $p_1 \mid N = q_1 \cdots q_m$, by [[prime-divides-product-of-primes]] $p_1 = q_i$ for some $i$. Now let
$$ M = \frac{N}{p_1} = p_2 \cdots p_n = q_1 \cdots q_{i-1}\, q_{i+1} \cdots q_m . $$
$M$ is an integer with $M < N$. And these are two *different* factorizations of $M$: we removed the same prime from two different factorizations. (If $M = 1$, both products are empty, so the original factorizations were both just $p_1$ — not different.) This contradicts the choice of $N$ as the smallest. $\square$
