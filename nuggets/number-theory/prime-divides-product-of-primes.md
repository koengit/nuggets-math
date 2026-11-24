---
title: "Lemma: if a prime divides a product of primes, it is one of them"
kind: theorem
groups: [topics/number-theory]
requires: [euclids-lemma, simple-induction]
next: [fundamental-theorem-of-arithmetic]
---
**Lemma.** If $p, q_1, \ldots, q_n$ are primes ($n \ge 1$) and $p \mid q_1 \cdots q_n$, then $p = q_i$ for some $i$.

**Proof** by simple induction over $n$. Let $P(n)$ = "for all primes $p, q_1, \ldots, q_n$: $p \mid q_1 \cdots q_n \Rightarrow p = q_i$ for some $i$".

*Base case:* $P(1)$: if $p \mid q_1$, then $p = q_1$ (a prime dividing a prime is that prime: [[primes]]).

*Step case:* $P(k) \Rightarrow P(k+1)$, $k \ge 1$. Assume the I.H., and $p \mid q_1 \cdots q_{k+1} = (q_1 \cdots q_k) \cdot q_{k+1}$. By [[euclids-lemma]], $p \mid q_1 \cdots q_k$ or $p \mid q_{k+1}$.

- If $p \mid q_1 \cdots q_k$: by the I.H., $p = q_i$ for some $1 \le i \le k$.
- If $p \mid q_{k+1}$: then $p = q_{k+1}$. $\square$
