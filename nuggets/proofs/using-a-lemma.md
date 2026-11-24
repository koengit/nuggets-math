---
title: Using a lemma
kind: method
groups: [topics/proofs]
uses: [fundamental-theorem-of-arithmetic]
---
A *lemma* (Swedish: *hjälpsats*) is a result we have already proved and now use as a step in another proof. When you use one, say clearly which lemma you use, and check that its assumptions hold.

**To prove:** For every natural number $n \ge 2$ there is a prime number $p$ with $p \mid n$.

**Proof:**

1. Every natural number $n \ge 2$ can be written as a product of primes $p_1 \cdot \ldots \cdot p_k$ (by the [[fundamental-theorem-of-arithmetic]]).
2. Since $n \ge 2$, the product is not empty: $k \ge 1$.
3. Pick $p = p_1$. Then $p \mid n$, because $p_1 \mid p_1 \cdot (p_2 \cdots p_k)$. $\square$
