---
title: "Exercise: a connected graph with n nodes and n−1 edges is a tree"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [tree-edges, handshake-lemma]
---
Prove: a simple connected graph with $n$ nodes and $n-1$ edges is a tree.

*Hint:* simple induction on $n$. This lemma helps: *a simple connected graph with $n \ge 2$ nodes and $n-1$ edges has a leaf* (a node of degree 1).

Follow-up: is every graph with $n$ nodes and $n-1$ edges connected?

## Answer

**The leaf lemma.** Let $G$ be connected with $n \ge 2$ nodes and $n-1$ edges. Since $G$ is connected and $n \ge 2$, every node has degree $\ge 1$. If every node had degree $\ge 2$, then by the [[handshake-lemma]] $2(n-1) = \sum_v \deg(v) \ge 2n$, which is impossible. So some node has degree exactly 1.

**The theorem,** by simple induction on $n$. $P(n)$ = "every connected simple graph with $n$ nodes and $n-1$ edges is a tree".

*Base case:* $n = 1$: one node, no edges: connected and no cycles, so a tree.

*Step case:* assume $P(k)$; let $G$ be connected with $k+1 \ge 2$ nodes and $k$ edges. By the leaf lemma $G$ has a leaf $v$. Remove $v$ and its single edge. The result $G'$ has $k$ nodes and $k-1$ edges, and is still connected (a path between two other nodes never passes *through* $v$, since $v$ has only one neighbour). By the I.H., $G'$ is a tree. Adding back $v$ with one edge cannot create a cycle (a cycle through $v$ would need two edges at $v$). So $G$ is connected and acyclic: a tree. $\square$

**Follow-up:** No. For example, take a triangle (3 nodes, 3 edges) plus one isolated node: 4 nodes, 3 edges, not connected (and it has a cycle).
