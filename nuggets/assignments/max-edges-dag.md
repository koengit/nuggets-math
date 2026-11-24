---
title: "Exercise: how many arrows can a DAG have?"
kind: exercise
groups: [topics/graphs, assignments/assignment-6]
requires: [topological-ordering-iff-acyclic, combinatorial-proof-sum]
---
*(Assignment question; no answer is published.)*

For a directed graph with $n$ nodes, let $A(n)$ be the maximum number of arrows it can have **without** having a cycle. For example $A(2) = 1$, $A(3) = 3$, $A(4) = 6$. Express $A(n)$ in terms of $n$, and explain both:

(a) that there are directed graphs with $n$ nodes, $A(n)$ arrows and no cycles, and
(b) that every directed graph with $n$ nodes and more than $A(n)$ arrows has a cycle.

*Hint 1:* a graph without cycles has a topological ordering. Once you know the order of the nodes, which arrows can you add without creating a cycle?
*Hint 2:* for (b), it is **not enough** to show that adding an arrow to one particular graph with $A(n)$ arrows creates a cycle. (Why?)
