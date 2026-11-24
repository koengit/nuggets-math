---
title: "The Chinese hypothesis: a plausible but false converse"
kind: example
groups: [topics/number-theory]
requires: [fermats-little-theorem]
---
Fermat's little theorem says: if $p$ is an odd prime, then $2^{p-1} \equiv 1 \pmod p$. What about the converse?

> **"Chinese hypothesis":** for every odd natural number $p > 1$, if $2^{p-1} \equiv 1 \pmod p$, then $p$ is prime.

This is **false**. It is a good example of a statement that is simple, true for many numbers (you are unlikely to find a counterexample by trying random numbers), and yet has (infinitely) many counterexamples. The smallest one is
$$ p = 341 = 11 \cdot 31, \qquad 2^{340} \equiv 1 \pmod{341}. $$

*Check:* $2^{10} = 1024 = 3 \cdot 341 + 1 \equiv 1 \pmod{341}$, so $2^{340} = (2^{10})^{34} \equiv 1$.

Numbers like 341 are called *(Fermat) pseudoprimes* to base 2. Moral: checking examples is not a proof ([[proving-quantified-statements]]).
