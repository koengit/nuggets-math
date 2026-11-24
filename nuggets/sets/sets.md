---
title: Sets
kind: definition
groups: [topics/sets-and-functions]
next: [functions, ex-set-operations, counting-sets]
---
A **set** is a collection of things, its **elements**; $x \in A$ means "$x$ is an element of $A$". A set is determined by its elements only: order and repetition do not matter, so $\{1, 2, 3\} = \{3, 1, 2\} = \{1, 1, 2, 3\}$.

Standard sets: $\N = \{0, 1, 2, \ldots\}$ (natural numbers; in this course $0 \in \N$), $\Z$ (integers, Swedish *heltal*), $\Q$ (rationals), $\R$ (reals), $\mathbb{B} = \{0, 1\}$ (booleans), and the empty set $\emptyset$.

**Operations.** For sets $A, B$ (inside some universe $U$):

| | notation | elements |
|---|---|---|
| union | $A \cup B$ | in $A$ or in $B$ |
| intersection (Swedish *snitt*) | $A \cap B$ | in $A$ and in $B$ |
| difference | $A \setminus B$ | in $A$ but not in $B$ |
| complement | $\overline{A}$ | in $U$ but not in $A$ |
| product | $A \times B$ | pairs $(a, b)$ with $a \in A$, $b \in B$ |
| power set | $\mathcal{P}(A)$ | all subsets of $A$ |

$A \subseteq B$ ("$A$ is a subset of $B$") means every element of $A$ is in $B$. Two sets are equal when $A \subseteq B$ and $B \subseteq A$.

The set operations mirror the logical connectives: $\cup$ is $\vee$, $\cap$ is $\wedge$, complement is $\neg$; so laws like De Morgan's hold for sets too ([[logical-laws]]): $\overline{A \cup B} = \overline A \cap \overline B$.

$|A|$ is the number of elements of a finite set $A$ (its *cardinality*).
