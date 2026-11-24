---
title: "Alternative proof: two paths give a cycle, by strong induction"
kind: proof
groups: [topics/graphs]
requires: [two-paths-cycle, strong-induction]
---
Here is the lemma of [[two-paths-cycle]] again, now proved by explicit strong induction instead of a minimal counterexample.

**Proof.** By strong induction on $n$, the total length of the two paths. Let

> $P(n)$ = "for all nodes $u, v$: if there are two different paths from $u$ to $v$ whose lengths add up to $n$, then the graph has a cycle".

*Base case:* $P(0)$. Two paths of total length 0 are both the empty path at $u$, so they are not different. Nothing to prove.

*Step case:* assume $P(k)$ for all $0 \le k \le n$ (I.H.); show $P(n+1)$. Take two different paths from $u$ to $v$ with total length $n+1$.

- *Case 1:* they share no nodes except $u$ and $v$. Then together they form a cycle.
- *Case 2:* they share a node $w$, so they are $u \overset{p_1}{\leadsto} w \overset{p_2}{\leadsto} v$ and $u \overset{q_1}{\leadsto} w \overset{q_2}{\leadsto} v$, and $p_1 \ne q_1$ or $p_2 \ne q_2$. In the first case $p_1, q_1$ are two different paths between $u$ and $w$, in the second $p_2, q_2$ are two different paths between $w$ and $v$; either way their total length is $< n+1$. By the I.H. the graph has a cycle. $\square$

Compare the two proofs: the minimal-counterexample proof is shorter to write, the induction proof makes the "why can we assume smaller cases" explicit.
