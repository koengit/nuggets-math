---
title: "Exercise: a digraph with more edges than nodes"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [directed-graph, walks-paths-cycles]
uses: [pigeonhole-principle]
---
A directed graph $G$ has $n$ nodes and $n+1$ edges. True or false? Give an argument.

(a) $G$ must have a cycle.

(b) $G$ must have at least one node with indegree at least 2.

## Answer

(a) **False.** Counterexample with $n = 4$: nodes $A, B, C, D$ and the 5 edges $A{\to}B$, $A{\to}C$, $A{\to}D$, $B{\to}C$, $B{\to}D$. There is no cycle: $A, B, C, D$ is a topological ordering. (In fact a DAG on $n$ nodes can have up to $n(n-1)/2$ edges: order the nodes, and add every arrow from an earlier node to a later one.)

(b) **True.** If every node had indegree at most 1, the total number of edges would be $\sum_v \mathrm{indeg}(v) \le n$. But there are $n+1$ edges. (This is the [[pigeonhole-principle]]: $n+1$ edges, $n$ possible endpoints.)
