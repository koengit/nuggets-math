---
title: "Exercise: on a finite set, injective means surjective"
kind: exercise
groups: [topics/sets-and-functions, exercises/week-1]
requires: [injective-surjective]
uses: [pigeonhole-principle]
---
Let $A = \{1, 2, 3, 4, 5\}$. Is there a function $f : A \to A$ that is injective but not surjective? Explain.

## Answer

**No.** Suppose $f : A \to A$ is injective but not surjective. Then some $a \in A$ is never reached, so $f$ is really a function $A \to A \setminus \{a\}$. But $A$ has 5 elements and $A \setminus \{a\}$ only 4, so two elements of $A$ must have the same image ([[pigeonhole-principle]]): $f$ is not injective. Contradiction.

This uses that $A$ is **finite**. For infinite sets there are such functions: $n \mapsto n+1$ on $\N$ ([[ex-injective-not-surjective]]).
