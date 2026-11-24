---
title: "1 + 2 + … + n = n(n+1)/2"
kind: theorem
groups: [topics/induction, topics/sums]
requires: [simple-induction]
next: [arithmetic-sum]
---
**Theorem.** $1 + 2 + 3 + \dots + n = \dfrac{n(n+1)}{2}$ for all $n \in \N$.

**The intuition (the young Gauss).** The story goes that Gauss's school teacher asked the class to add up $1 + 2 + \dots + 100$, hoping to have some peace. Gauss answered almost immediately: 5050. He paired the numbers from both ends:
$$ 1 + 100 = 101,\quad 2 + 99 = 101,\quad \ldots,\quad 50 + 51 = 101, $$
50 pairs of 101: $5050$. In general there are $n/2$ pairs that each sum to $n+1$.

Such intuitive arguments are easy to get slightly wrong (what if $n$ is odd?). Induction is the *systematic* way.

**Proof** by simple induction over $n$. Let $P(n)$ = "$1 + 2 + \dots + n = \frac{n(n+1)}{2}$".

*Base case:* $P(0)$: the empty sum is $0$, and $\frac{0 \cdot 1}{2} = 0$. OK.

*Step case:* $P(k) \Rightarrow P(k+1)$ for $k \ge 0$. Assume (I.H.) $1 + \dots + k = \frac{k(k+1)}{2}$. Then
$$ 1 + \dots + k + (k+1) \overset{\text{I.H.}}{=} \frac{k(k+1)}{2} + \frac{2(k+1)}{2} = \frac{(k+1)(k+2)}{2}. $$
$\square$

(The same proof, starting at $n = 1$, is written out in detail in [[how-to-write-induction-proofs]].)
