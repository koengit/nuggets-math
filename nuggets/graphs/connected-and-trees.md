---
title: Connected graphs and trees
kind: definition
groups: [topics/graphs]
requires: [walks-paths-cycles]
next: [tree-unique-paths, tree-edges, connected-n-1-edges-tree]
---
A simple graph is **connected** (Swedish: *sammanhängande*) if for every two nodes $u$ and $v$ there is a walk from $u$ to $v$. (By [[walk-implies-path]], "walk" may be replaced by "path".)

A **connected component** of a graph is a maximal set of nodes that are all connected to each other. Being connected to each other is an equivalence relation ([[ex-path-equivalence]]), and the components are its equivalence classes.

A simple graph is a **tree** if it is connected and has no cycles.

Trees have several equivalent characterizations:

- $G$ is a tree $\iff$ between every two nodes there is a **unique** path ([[tree-unique-paths]]).
- A tree with $n$ nodes has exactly $n-1$ edges ([[tree-edges]]), and conversely a connected graph with $n$ nodes and $n-1$ edges is a tree ([[connected-n-1-edges-tree]]).

A node of degree 1 in a tree is called a **leaf**.
