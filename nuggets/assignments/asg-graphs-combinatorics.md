---
title: "Exercises: bridges have odd-degree nodes, and counting FAKTARUTA"
kind: exercise
groups: [topics/graphs, topics/combinatorics, assignments/assignment-6]
requires: [handshake-lemma, words-with-repeated-letters]
---
*(Assignment questions; no answers are published.)*

**1.** A simple graph $G$ is connected and has an edge $e$ such that removing $e$ (keeping all nodes) makes $G$ disconnected. Prove that $G$ contains at least two nodes of odd degree. *Hints:* use proof by contradiction, and the fact that the sum of all degrees is even ([[handshake-lemma]]).

**2.** Strings made from exactly the letters F, A, K, T, A, R, U, T, A:
(a) How many different strings are there? (b) How many in which the two T's are **not** adjacent? (c) How many in which no two A's are adjacent? (d)* How many in which no two equal letters are adjacent?
Compute every answer in two ways: with a program that enumerates all possibilities (e.g. Haskell's `permutations`, and `nub` from [Combinatorics.hs](assets/Combinatorics.hs)), and with formulas from combinatorics.
