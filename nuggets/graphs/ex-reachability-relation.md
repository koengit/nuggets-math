---
title: "Exercise: properties of reachability in a directed graph"
kind: exercise
groups: [topics/graphs, topics/relations, exercises/week-6]
requires: [walks-paths-cycles, relations-properties]
next: [ex-path-equivalence]
---
Let $G$ be a directed graph, and define the relation on nodes
$$ R(u,v) = \text{"there is a directed path from } u \text{ to } v \text{ in } G\text{"}. $$
Which of the properties reflexive, symmetric, transitive does $R$ have?

## Answer

- **Reflexive: yes.** There is always a path from $v$ to $v$: the empty path.
- **Symmetric: no.** In the graph with the single edge $A \to B$ we have $R(A,B)$ but not $R(B,A)$.
- **Transitive: yes.** Given a path from $u$ to $v$ and a path from $v$ to $w$, glue them together (with $v$ in the middle) to get a walk from $u$ to $w$. That walk might not be a path (nodes may repeat), but by [[walk-implies-path]] there is then also a path from $u$ to $w$.

So $R$ is a *preorder*; it is a partial order exactly when $G$ has no cycles of length $\ge 2$.
