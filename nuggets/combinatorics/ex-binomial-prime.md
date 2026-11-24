---
title: "Exercise: p divides (p choose k) for prime p"
kind: exercise
groups: [topics/combinatorics, topics/number-theory, exercises/week-7]
requires: [permutations-and-combinations, euclids-lemma]
next: [ex-fermat-induction]
---
Let $p$ be prime. Show that $\binom pk$ is divisible by $p$ for all $0 < k < p$. Does this also hold when $p$ is not prime?

## Answer

$\binom pk = \frac{p!}{k!\,(p-k)!}$, so
$$ p! = \binom pk \cdot k! \cdot (p-k)! . $$
The left-hand side is divisible by $p$. Since $0 < k < p$, both $k!$ and $(p-k)!$ are products of numbers between 1 and $p - 1$, none of which is divisible by $p$; by [[euclids-lemma]] (applied repeatedly), $p \nmid k!\,(p-k)!$. Applying Euclid's lemma once more to $p \mid \binom pk \cdot \big(k!\,(p-k)!\big)$: $p \mid \binom pk$. $\square$

**Not for non-primes:** $p = 4$, $k = 2$: $\binom42 = 6$, and $4 \nmid 6$.
