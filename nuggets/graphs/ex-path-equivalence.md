---
title: "Exercise: being connected is an equivalence relation"
kind: exercise
groups: [topics/graphs, topics/relations, exercises/week-6]
requires: [ex-reachability-relation]
---
Let $G$ be a simple graph and define $R(u,v)$ = "there is a path from $u$ to $v$ in $G$". Show that $R$ is an equivalence relation.

## Answer

- **Reflexive:** the empty path goes from $v$ to $v$.
- **Symmetric:** if there is a path from $u$ to $v$, reversing it gives a path from $v$ to $u$ (edges in a simple graph have no direction).
- **Transitive:** glue a path from $u$ to $v$ and a path from $v$ to $w$ into a walk from $u$ to $w$; by [[walk-implies-path]] there is also a path.

The equivalence classes of $R$ are exactly the **connected components** of $G$.
