---
title: "Cantor's diagonal argument: the reals do not fit in the hotel"
kind: theorem
groups: [topics/sets-and-functions]
requires: [hilbert-hotel, proof-by-contradiction]
---
**Theorem.** The set $\N \to \mathbb{B}$ of infinite bit sequences is not countable: there is no way to give every bit sequence its own room in Hilbert's hotel.

**Proof.** By contradiction. Suppose every function $\N \to \mathbb{B}$ has a room; let $f_n$ be the sequence in room $n$:

| room | bit 0 | bit 1 | bit 2 | bit 3 | … |
|---|---|---|---|---|---|
| 0 | $\mathbf{f_0(0)}$ | $f_0(1)$ | $f_0(2)$ | $f_0(3)$ | |
| 1 | $f_1(0)$ | $\mathbf{f_1(1)}$ | $f_1(2)$ | $f_1(3)$ | |
| 2 | $f_2(0)$ | $f_2(1)$ | $\mathbf{f_2(2)}$ | $f_2(3)$ | |
| … | | | | | |

Define a new sequence by flipping the **diagonal**:
$$ g(n) = 1 - f_n(n) . $$
Then $g$ is a function $\N \to \mathbb{B}$, so it must have a room, say $k$: $g = f_k$. But then $g(k) = f_k(k)$, while by definition $g(k) = 1 - f_k(k) \ne f_k(k)$. Contradiction. $\square$

**The reals.** Not even the real numbers in $[0, 1)$ fit: write each one in decimal, $0.d_0 d_1 d_2 \ldots$, list them as above, and build a number whose $n$-th decimal differs from the $n$-th decimal of the $n$-th number (choose e.g. $5$ if that decimal is not $5$, and $4$ otherwise — avoiding $0$ and $9$ sidesteps the problem that $0.0999\ldots = 0.1$). This number is in $[0, 1)$ but in no room.

So $|\N| < |\R|$: there are more reals than natural numbers.
