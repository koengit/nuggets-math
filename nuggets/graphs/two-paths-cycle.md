---
title: "Lemma: two different paths between the same nodes give a cycle"
kind: theorem
groups: [topics/graphs, exercises/week-6]
requires: [walks-paths-cycles, proof-by-contradiction]
see-also: [two-paths-cycle-induction]
next: [tree-unique-paths]
---
**Lemma.** In a simple graph: if there are two different paths from $u$ to $v$, then the graph has a cycle.

(This was exercise 10 of week 6.)

**Proof.** By contradiction. Assume there is a graph with two different paths between some pair of nodes, and *no* cycles. Among all such pairs of paths in the graph, pick two (from $u$ to $v$) whose **total length is as small as possible**. There are two cases.

1. *The two paths have no node in common except $u$ and $v$.* Then following one path from $u$ to $v$ and the other one back forms a cycle. (It has at least 3 edges: two different paths in a simple graph cannot both be the single edge $\{u,v\}$, so one of them has length $\ge 2$.) Contradiction.

2. *The two paths have another node $w$ in common.* Then they look like
$$ \text{path 1: } u \overset{p_1}{\leadsto} w \overset{p_2}{\leadsto} v \qquad\qquad \text{path 2: } u \overset{q_1}{\leadsto} w \overset{q_2}{\leadsto} v $$
Since the paths are different, $p_1 \ne q_1$ or $p_2 \ne q_2$ (if both were equal, the paths would be equal).
   - If $p_1 \ne q_1$: these are two different paths between $u$ and $w$, with smaller total length. Contradiction with minimality.
   - If $p_2 \ne q_2$: these are two different paths between $w$ and $v$, with smaller total length. Contradiction. $\square$

The "pick a smallest counterexample" trick is really [[strong-induction]] in disguise; see [[two-paths-cycle-induction]].
