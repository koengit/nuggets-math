---
title: "Relations: reflexive, symmetric, transitive, equivalence"
kind: definition
groups: [topics/relations, topics/number-theory]
requires: [quantifiers]
next: [ex-relation-properties]
---
A **relation** $R$ on a set $A$ is a predicate with two arguments, $R(x, y)$, for $x, y \in A$. Examples: $x = y$, $x < y$, $x \le y$, $x \mid y$, $x \equiv y \pmod m$. (Formally, a relation is a subset of $A \times A$, which is the same thing as a [[directed-graph]] on $A$.)

A relation can have these properties:

- **reflexive:** $\forall x \in A.\; R(x, x)$
- **symmetric:** $\forall x, y \in A.\; R(x, y) \Rightarrow R(y, x)$
- **transitive:** $\forall x, y, z \in A.\; (R(x, y) \wedge R(y, z)) \Rightarrow R(x, z)$

A relation with all three properties is an **equivalence relation**. Examples: $=$, and $\equiv \pmod m$.

**Examples on people.**

- "$x$ is a sibling of $y$" is not reflexive (you are not your own sibling) and symmetric, but **not transitive**: Anna is Bo's sibling and Bo is Anna's sibling, but Anna is not Anna's sibling. (Half-siblings break transitivity too.)
- "$x$ has the same parents as $y$" is reflexive, symmetric and transitive: an equivalence relation.

**Equivalence classes.** An equivalence relation divides $A$ into disjoint **equivalence classes**: groups of elements that are all related to each other. For $\equiv \pmod 5$ on $\Z$ these are the five remainder classes $\{\ldots,-5,0,5,10,\ldots\}$, $\{\ldots,-4,1,6,11,\ldots\}$, …, $\{\ldots,-1,4,9,14,\ldots\}$ ([[modular-arithmetic]]). For "there is a path between" in a graph, they are the connected components ([[ex-path-equivalence]]).
