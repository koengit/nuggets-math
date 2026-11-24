---
title: "Exercise: what happens when you remove an edge or a node?"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [connected-and-trees]
---
Let $G$ be a connected graph.

(a) Remove one edge from $G$. How many components can the resulting graph have? Give examples of each possibility.

(b) Put the edge back. Now remove one node, together with all edges involving it. How many components can the result have? Give examples.

## Answer

(a) **1 or 2.** Example of 1: a triangle (three nodes, all connected); removing any edge leaves a path. Example of 2: two nodes with one edge between them. It can never be more than 2: every node was connected to one of the endpoints $u, v$ of the removed edge by a path not using that edge (cut the path at the last time it used the edge), so every component contains $u$ or $v$.

(b) **Any number.** For every $k \ge 1$, take a *star*: a centre node $v$ connected to $k$ other nodes, and nothing else. Removing $v$ leaves $k$ isolated nodes, so $k$ components. (If $G$ is a single node, removing it leaves the empty graph, with 0 components.)
