---
title: Euler tours
kind: theorem
groups: [topics/graphs]
requires: [walks-paths-cycles, connected-and-trees]
see-also: [handshake-lemma]
next: [ex-euler-figures, ex-doors-puzzle]
---
An **Euler tour** of a simple graph $G$ is a *closed* walk that uses every edge of $G$ exactly once. An **Euler walk** is a walk (not necessarily closed) that uses every edge exactly once.

**Theorem (Euler).** A connected graph has an Euler tour if and only if every node has even degree.

**Why even degrees are necessary.** Every time the tour passes through a node, it enters along one edge and leaves along another; this also holds for the start node, where the tour leaves at the start and enters at the end. Since every edge is used exactly once, the edges at each node are paired up, so every degree is even.

**Why they are sufficient (sketch).** Start anywhere and keep walking along unused edges. Because all degrees are even, whenever you enter a node other than the start, there is an unused edge to leave by; so you can only get stuck back at the start, having made a closed walk. If unused edges remain, one of them touches a node on your walk (the graph is connected). Start a new closed walk there using only unused edges (still all even degrees) and splice it into the first one. Repeat until all edges are used.

**Euler walks.** A connected graph has an Euler walk if and only if it has **0 or 2** nodes of odd degree. With 2, the walk must start at one of them and end at the other. (Add an extra edge between the two odd nodes, take an Euler tour, and remove the extra edge again.)
