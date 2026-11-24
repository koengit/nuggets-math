---
title: "Exercise: a tree with n nodes has n−1 edges"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [connected-and-trees, strong-induction]
see-also: [chocolate-bar, connected-n-1-edges-tree]
---
Prove: a tree with $n$ nodes has exactly $n - 1$ edges.

*Hint:* strong induction on the number of nodes $n$.

## Answer

By strong induction on $n$. Let $P(n)$ = "every tree with $n$ nodes has $n-1$ edges".

**Base case:** $P(1)$. A graph with 1 node has no edges ($0 = 1-1$).

**Step case:** assume $P(i)$ for all $1 \le i \le k$ (I.H.), where $k \ge 1$; show $P(k+1)$.

Take a tree $T$ with $k+1 \ge 2$ nodes. Since $T$ is connected and has at least two nodes, it has at least one edge $e = \{u, v\}$. Remove $e$.

The resulting graph has exactly two components, one containing $u$ and one containing $v$:

- *not more than two:* every node $w$ was connected to $u$ by a path in $T$; if that path did not use $e$ it still exists, and if it did use $e$ then $w$ is now connected to $v$ instead.
- *not one:* if $u$ and $v$ were still connected after removing $e$, that path together with $e$ would form a cycle in $T$.

Each component is connected, and has no cycles (because $T$ has none), so each is a tree. Each has at least one node, so each has at most $k$ nodes. Say they have $a$ and $b$ nodes, with $a + b = k+1$.

By the I.H. they have $a-1$ and $b-1$ edges. So $T$ has $(a-1) + (b-1) + 1 = a + b - 1 = k$ edges (the $+1$ is $e$). $\square$

Compare this proof with the [[chocolate-bar]] problem: it is the same argument!
