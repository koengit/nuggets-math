---
title: "Exercise: a bijection graph always has a cycle"
kind: exercise
groups: [topics/graphs, topics/probability, exercises/week-7]
requires: [topological-ordering-iff-acyclic]
next: [hundred-prisoners]
---
A *bijection graph* is a finite directed graph in which every node has exactly one outgoing and exactly one incoming arrow. What is the probability that a (random) bijection graph has a cycle?

## Answer

**100%.** Every node has an incoming arrow, so no node can come first in a topological ordering; hence there is no topological ordering, and by [[topological-ordering-iff-acyclic]] the graph has a cycle. (In fact, a bijection graph consists entirely of disjoint cycles: it is a permutation, drawn as a graph.)
