---
title: "Alternative proof: the digit sum, by a smallest counterexample"
kind: proof
groups: [topics/number-theory, topics/induction]
requires: [digit-sum-mod-3, proof-by-contradiction]
---
Here is [[digit-sum-mod-3]] again, now proved by contradiction, using the *smallest counterexample*. Strong induction and "take the smallest counterexample" are equally strong: each proof can be turned into the other.

**Theorem.** $n \equiv S(n) \pmod 3$ for all $n \in \N$.

**Proof.** By contradiction. Assume the theorem is false, and let $N$ be the **smallest** number with $N \not\equiv S(N) \pmod 3$.

1. $N$ cannot have only one digit, since then $S(N) = N$.
2. So $N = 10a + b$ with $a \ge 1$ and $0 \le b \le 9$.
3. $10a + b \not\equiv S(10a + b) = S(a) + b \pmod 3$.
4. Subtract $b$: $10a \not\equiv S(a)$, and since $10a \equiv a \pmod 3$: $a \not\equiv S(a) \pmod 3$.

But $a < N$, and $a$ is also a counterexample. This contradicts that $N$ was the smallest. $\square$
