---
title: Topological orderings
kind: definition
groups: [topics/graphs]
requires: [directed-graph]
next: [topological-ordering-iff-acyclic, ex-count-topological-orderings]
---
Let $G = (V, E)$ be a directed graph. A **topological ordering** of $G$ is a sequence
$$ v_1, v_2, \ldots, v_n $$
containing every node of $V$ exactly once, such that **all arrows point from left to right**:
$$ \text{for all } 1 \le i, j \le n:\; (v_i, v_j) \in E \;\Rightarrow\; i < j . $$
So arrows may go from $v_1$ to $v_5$, or from $v_3$ to $v_4$, but never from $v_6$ to $v_2$, or from $v_7$ to $v_6$ — and there can be no self-loops.

Think of tasks with dependencies ("$u \to v$": $u$ must be done before $v$), or of modules that import each other: a topological ordering is an order in which you can do everything.

**Example.** The graph with edges $A \to B$, $A \to C$, $A \to D$, $B \to D$, $C \to E$, $E \to D$ has topological ordering $A, B, C, E, D$, and another one is $A, C, B, E, D$. But $A, E, B, C, D$ is *not* a topological ordering, because of the arrow $C \to E$.

**Not every directed graph has one.** In the graph $A \to B \to C \to A$, some node would have to come last — but every node points to another node, which would then come after it. The problem is the cycle: see [[topological-ordering-iff-acyclic]].

A directed graph without cycles is called a **directed acyclic graph** (DAG).
