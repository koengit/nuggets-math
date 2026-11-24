---
title: Walks, paths, closed walks and cycles
kind: definition
groups: [topics/graphs]
requires: [simple-graph, directed-graph]
next: [walk-implies-path, two-paths-cycle, connected-and-trees]
---
These four concepts exist for both directed and simple graphs.

- A **walk** is a sequence of nodes $u_1, u_2, \ldots, u_n$ such that there is an edge $(u_i, u_{i+1})$ (or $\{u_i, u_{i+1}\}$) between every two adjacent nodes in the sequence. The **length** of a walk is its number of *edges*. A walk of length 0 (the *empty walk*) is a sequence with just one node.
- A **path** is a walk in which no node appears more than once.
- A **closed walk** is a walk that begins and ends at the same node. The empty walk is a (trivial) closed walk.
- A **cycle** is a closed walk in which no node appears more than once, except that the first and last node are the same. In a *directed* graph, a cycle must have at least 1 edge (so a self-loop is a cycle). In a *simple* graph, a cycle must have at least 3 edges (otherwise walking $u, v, u$ along one edge would count). The empty walk is never a cycle.

**Notation.** We write $u \overset{p}{\leadsto} v$ for "there is a walk/path $p$ from $u$ to $v$", and $u \overset{p}{\leadsto} v \overset{q}{\leadsto} w$ for a walk $p$ from $u$ to $v$ followed by a walk $q$ from $v$ to $w$.
