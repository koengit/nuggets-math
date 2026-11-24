---
title: "Exercise: how many graphs are there on n nodes?"
kind: exercise
groups: [topics/combinatorics, topics/graphs, exercises/week-7]
requires: [permutations-and-combinations, simple-graph]
---
Given $n$ nodes $1, 2, \ldots, n$, how many different simple (undirected) graphs can we make on them?

## Answer

An edge is a choice of 2 of the $n$ nodes, so there are $\binom n2$ possible edges. A graph is determined by which subset of these edges it contains, and a set of $k$ elements has $2^k$ subsets. So there are
$$ 2^{\binom n2} $$
graphs.

| $n$ | possible edges | graphs |
|---|---|---|
| 1 | 0 | 1 |
| 2 | 1 | 2 |
| 3 | 3 | 8 |
| 4 | 6 | 64 |
| 5 | 10 | 1024 |
| 6 | 15 | 32768 |

(These are *labelled* graphs: two graphs with the same shape but different node numbers count as different.)
