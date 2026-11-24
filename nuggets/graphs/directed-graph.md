---
title: Directed graphs
kind: definition
groups: [topics/graphs]
requires: [sets]
next: [simple-graph, walks-paths-cycles, topological-ordering]
---
A **directed graph**, or *digraph*, $G$ is a pair $(V, E)$ of a finite set of **nodes** $V$ and a set of **edges** $E$. The nodes can be anything. The edges are *ordered* pairs $(u, v)$ with $u, v \in V$; when $(u,v) \in E$ we say that $u$ *points to* $v$, and draw an arrow $u \to v$.

This means that:

1. For any two nodes $u$ and $v$, there either is an edge from $u$ to $v$ or there is not: we cannot have *multiple* edges from $u$ to $v$. We *can* have both an edge from $u$ to $v$ and one from $v$ to $u$.
2. We can have an edge from a node to itself: the edge $(u, u)$ (a *self-loop*).

The **indegree** $\mathrm{indeg}(v)$ of a node $v$ is the number of edges pointing *to* it; the **outdegree** $\mathrm{outdeg}(v)$ is the number of edges pointing *away* from it.

Since every edge has exactly one start and one end:
$$ \sum_{v \in V} \mathrm{indeg}(v) \;=\; \sum_{v\in V} \mathrm{outdeg}(v) \;=\; |E| .$$

A directed graph is the same thing as a **relation** on $V$: $E \subseteq V \times V$. See [[relations-properties]].
