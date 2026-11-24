---
title: "Exercise: Fermat's little theorem by induction"
kind: exercise
groups: [topics/combinatorics, topics/number-theory, exercises/week-7]
requires: [binomial-theorem, ex-binomial-prime, simple-induction]
see-also: [fermats-little-theorem, necklaces-fermat]
---
Prove Fermat's little theorem, $a^p \equiv a \pmod p$ for every prime $p$ and every $a \in \N$, by induction on $a$.

The base case ($a = 0$) is easy: $0^p \equiv 0 \pmod p$. The step case assumes $k^p \equiv k \pmod p$ (the I.H.) and has to show $(k+1)^p \equiv k + 1 \pmod p$. Use the [[binomial-theorem]] and [[ex-binomial-prime]].

## Answer

All congruences are modulo $p$.
$$
\begin{aligned}
(k+1)^p &= \sum_{r=0}^{p} \binom pr k^r && \text{[binomial theorem]}\\
&= k^p + \Big(\sum_{r=1}^{p-1} \binom pr k^r\Big) + 1 \\
&\equiv k^p + 1 && [p \mid \tbinom pr \text{ for } 0 < r < p] \\
&\equiv k + 1 && \text{[I.H.]}
\end{aligned}
$$
Every middle term $\binom pr k^r$ (with $0 < r < p$) is divisible by $p$ by [[ex-binomial-prime]]. $\square$
