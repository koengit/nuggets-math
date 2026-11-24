---
title: "Lemma: a graph is a tree iff every two nodes have a unique path"
kind: theorem
groups: [topics/graphs]
requires: [connected-and-trees]
uses: [walk-implies-path, two-paths-cycle]
---
**Lemma.** A simple graph $G$ is a tree if and only if for every two nodes $u, v$ there is exactly one path from $u$ to $v$.

**Proof.**

($\Rightarrow$) Assume $G$ is a tree. It is connected, so there is a walk from $u$ to $v$, and hence a path ([[walk-implies-path]]). If there were two different paths from $u$ to $v$, there would be a cycle ([[two-paths-cycle]]), so $G$ would not be a tree. So the path is unique.

($\Leftarrow$) Assume every two nodes have a unique path between them. Then $G$ is connected. If $G$ had a cycle, take two different nodes $u, v$ on it: going either way around the cycle gives two different paths from $u$ to $v$. Contradiction. So $G$ has no cycles, and is a tree. $\square$
