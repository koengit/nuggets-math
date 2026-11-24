---
title: "Two proofs: if every node has degree 2, there is a cycle"
kind: theorem
groups: [topics/graphs]
requires: [connected-and-trees, tree-edges, handshake-lemma]
see-also: [euler-tour]
---
**Theorem.** Let $G$ be a simple graph with at least one node, in which every node has degree 2. Then $G$ has a cycle.

**Proof 1 (using trees).** Take a connected component of $G$, with $n$ nodes. Suppose it has no cycle. Then it is connected and acyclic, so it is a tree, and has $n - 1$ edges ([[tree-edges]]). But all its nodes have degree 2, so by the [[handshake-lemma]] it has $\frac{2n}{2} = n$ edges. Contradiction. $\square$

**Proof 2 (by induction on the number of nodes).** $P(n)$ = "every graph with $n$ nodes, all of degree 2, has a cycle".

*Base case:* there are no simple graphs with 1 (or 2) nodes all of degree 2, so $P(1)$ (and $P(2)$) hold trivially.

*Step case:* assume $P(k)$ (I.H.), and take $G$ with $k+1$ nodes, all of degree 2. Take a node $u$; it has two neighbours $v \ne w$.

- *Case 1: $v$ and $w$ are adjacent.* Then $u, v, w$ is a cycle (a triangle).
- *Case 2: they are not.* Remove $u$ and its two edges, and add the edge $\{v, w\}$. The new graph $G'$ is simple, has $k$ nodes, all of degree 2. By the I.H. it has a cycle. If the cycle does not use $\{v, w\}$, it is a cycle in $G$. If it does, replace the edge $v - w$ by the path $v - u - w$: a cycle in $G$. $\square$

*More general:* if every node has degree $\ge 2$, there is a cycle (take a longest path; its endpoint has a second neighbour, which must lie on the path). And a graph where every degree is even and $\ge 2$ has a cycle too — e.g. because each component has an [[euler-tour]], which contains a cycle.
