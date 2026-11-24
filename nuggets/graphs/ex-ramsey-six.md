---
title: "Exercise: among six people, three are friends or three are strangers"
kind: exercise
groups: [topics/graphs, topics/combinatorics, exercises/week-6]
requires: [simple-graph]
uses: [pigeonhole-principle]
---
Let $G$ be a simple graph with 6 nodes. Show that, no matter which edges exist, at least one of these holds:

- there are 3 nodes with **no** edges between them, or
- there are 3 nodes with edges between **each** of them (a triangle).

Start by drawing a few graphs with 6 nodes to convince yourself. Is the statement also true for graphs with 5 nodes?

*Hint:* pick any node, and look at which of the other 5 nodes it does or does not have edges to.

## Answer

Pick any node $v$. Each of the other 5 nodes is either a neighbour of $v$ or not. By the [[pigeonhole-principle]] (5 nodes, 2 boxes), at least 3 of them are in the same box.

*Case 1: $v$ has (at least) 3 neighbours $a, b, c$.* If any two of $a, b, c$ are connected, say $a$ and $b$, then $v, a, b$ is a triangle. If none of them are connected, then $a, b, c$ are 3 nodes without edges between them.

*Case 2: $v$ has (at least) 3 non-neighbours $a, b, c$.* If any two of them are *not* connected, say $a$ and $b$, then $v, a, b$ have no edges between them. Otherwise $a, b, c$ form a triangle.

In all cases one of the two statements holds. $\square$

**Five nodes is not enough.** Take the 5-cycle $1-2-3-4-5-1$. It has no triangle, and any 3 of the 5 nodes include two that are neighbours on the cycle.

This is the first case of **Ramsey theory**: $R(3,3) = 6$. "In any party of six people, three are mutual friends or three are mutual strangers."
