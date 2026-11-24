---
title: "The handshake lemma: the degrees add up to twice the number of edges"
kind: theorem
groups: [topics/graphs]
requires: [simple-graph]
next: [euler-tour]
---
**Lemma.** In every simple graph $G = (V, E)$:
$$ \sum_{v \in V} \deg(v) = 2\,|E| . $$

**Proof.** Count the pairs (node, edge) where the edge is attached to the node, in two ways. Counting per node gives $\sum_v \deg(v)$. Counting per edge gives $2|E|$, since every edge $\{u, v\}$ is attached to exactly two nodes. $\square$

**Corollaries.**

- The sum of all degrees is **even**.
- The number of nodes with **odd** degree is **even**. (The even degrees add up to something even, so the odd degrees must too, and a sum of odd numbers is even only if there is an even number of them.)

The name: at a party, the number of hands shaken, summed over all guests, is twice the number of handshakes. In particular, the number of guests who shook an odd number of hands is even.
