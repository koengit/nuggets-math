---
title: Functions
kind: definition
groups: [topics/sets-and-functions]
requires: [sets]
next: [injective-surjective, operator-properties, counting-sets]
---
A **function** $f : A \to B$ assigns to **every** element $x$ of the **domain** $A$ **exactly one** element $f(x)$ of the **codomain** $B$.

For a finite domain, a function is completely described by its **function table**: one row per $x \in A$, with $f(x)$ next to it.

| $x$ | $f(x)$ |
|---|---|
| 1 | b |
| 2 | a |
| 3 | b |

Two functions $f, g : A \to B$ are equal when $f(x) = g(x)$ for all $x \in A$.

The set of all functions from $A$ to $B$ is written $A \to B$ (or $B^A$). Counting function tables gives $|A \to B| = |B|^{|A|}$ ([[counting-sets]]).

An *operator* on $A$ is a function $A \times A \to A$ ([[operator-properties]]).
