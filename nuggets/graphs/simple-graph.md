---
title: Simple (undirected) graphs
kind: definition
groups: [topics/graphs]
requires: [sets]
see-also: [directed-graph]
next: [walks-paths-cycles, handshake-lemma]
---
A **simple graph** (Swedish: *enkel graf*) $G$ is a pair $(V, E)$ of a finite set of nodes $V$ and a set of edges $E$, where each edge is a *subset* $\{u, v\} \subseteq V$ **of size 2**.

This means that:

1. Between two nodes $u$ and $v$ there either is an edge or not: no multiple edges.
2. There are no self-loops: an edge from $u$ to itself would be $\{u, u\} = \{u\}$, which does not have size 2.

The **degree** $\deg(v)$ of a node $v$ is the number of edges attached to it.

Since an edge $\{u,v\}$ is a set, it has no direction: $\{u,v\} = \{v,u\}$. A simple graph on $n$ nodes has at most $\binom n2$ edges (see [[ex-count-graphs]]).
