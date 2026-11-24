---
title: "Theorem: a topological ordering exists iff there are no cycles"
kind: theorem
groups: [topics/graphs]
requires: [topological-ordering, simple-induction]
uses: [dag-has-source]
---
**Theorem.** A directed graph has a topological ordering if and only if it has no (directed) cycles.

The proof consists of two lemmas.

**Lemma 1.** If the graph has a cycle, there is no topological ordering.

*Proof.* By contradiction. Assume the graph has a cycle and a topological ordering. Look at where the nodes of the cycle are in the ordering, and take the one, $v$, that comes **last**. In the cycle, $v$ points to some node $u$ of the cycle; but $u$ comes before $v$ in the ordering, so this arrow points right-to-left. Impossible. $\square$

**Lemma 2.** If the graph has no cycles, there is a topological ordering.

*Proof.* By simple induction on the number of nodes $n$.

- *Base case:* $n = 0$. The empty sequence is a topological ordering of the empty graph.
- *Step case:* $n = k+1$, $k \ge 0$. The I.H. says that every acyclic graph with $k$ nodes has a topological ordering. Take an acyclic graph $G$ with $k+1$ nodes. By [[dag-has-source]], $G$ has a source $v$. Remove $v$ and all arrows from $v$; the resulting graph $G'$ has $k$ nodes and is still acyclic. By the I.H., $G'$ has a topological ordering. Put $v$ in front of it. This is a topological ordering of $G$: arrows from $v$ point right, and no arrow points *to* $v$. $\square$

This proof is also an **algorithm**: repeatedly remove a source and output it (Kahn's algorithm). If at some point there is no source but nodes remain, the graph has a cycle.
