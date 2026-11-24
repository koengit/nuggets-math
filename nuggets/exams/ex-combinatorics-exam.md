---
title: "Exercise: operators, groups, beads and party hats"
kind: exercise
groups: [topics/combinatorics, exams/old-exams]
requires: [counting-principles, permutations-and-combinations]
---
(a) Let $A = \{1, 2, 3\}$. How many operators $A \times A \to A$ are there? How many of them are **commutative**?

(b) A class of 60 is randomly divided into 6 groups of 10. What is the probability that you and your friend are in the same group? Suppose you are not. The teacher now merges the 6 groups into 3 new groups, each consisting of two old groups. What is the probability now that you end up in the same (new) group?

(c) You want to put $n$ beads in a row, each red, green or blue, such that every colour occurs **at least once** (RRGBR is fine, GRGRR is not). In how many ways can you do that? *Hint:* first solve it for 2 colours.

(d) 12 people sit in a row. You hand out 5 identical party hats, but two people sitting next to each other may not *together* get more than one hat. In how many ways can you do it?

## Hint

(a) Count function tables ([[ex-count-operators]]); for commutative ones, which entries of the table can you still choose freely? (b) See [[ex-same-group]]: fix yourself first. (c) Count all strings and subtract the bad ones (subtraction principle, *inclusion–exclusion*). (d) Is it possible for one person to get two hats? Then think of the people without a hat, and the gaps between them.
