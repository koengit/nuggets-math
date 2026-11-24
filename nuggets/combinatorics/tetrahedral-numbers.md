---
title: "Exercise: marbles in a tetrahedron"
kind: exercise
groups: [topics/combinatorics, exercises/week-7]
requires: [permutations-and-combinations, simple-induction]
uses: [pascals-triangle]
see-also: [stars-and-bars]
---
![a tetrahedron of marbles](assets/pyramid.jpeg)

A triangular pyramid (tetrahedron) of marbles of height 1 needs 1 marble, of height 2 needs $1 + 3 = 4$, of height 3 needs $1 + 3 + 6 = 10$. Prove that a pyramid of height $n$ needs $\binom{n+2}{3}$ marbles.

*Hint:* induction on $n$ works. But you can also match each marble with a choice of 3 things out of $n+2$ — compare [[stars-and-bars]].

## Answer

Layer $i$ (from the top) is a triangle with $1 + 2 + \dots + i = \binom{i+1}{2}$ marbles ([[sum-1-to-n]]). So we must show
$$ \sum_{i=1}^n \binom{i+1}{2} = \binom{n+2}{3} . $$

**By induction on $n$.** *Base case* $n = 1$: $\binom22 = 1 = \binom33$. *Step case:* assume $\sum_{i=1}^{k}\binom{i+1}2 = \binom{k+2}{3}$ (I.H.). Then
$$ \sum_{i=1}^{k+1}\binom{i+1}2 = \binom{k+2}{3} + \binom{k+2}{2} = \binom{k+3}{3} $$
by the I.H. and Pascal's identity ([[pascals-triangle]]). $\square$

**Combinatorially.** Give the marble at position $(i, j, l)$ — layer $i$, row $j \le i$, place $l \le j$ — the three numbers $l < j + 1 < i + 2$, a 3-element subset of $\{1, \ldots, n+2\}$. Conversely, every subset $\{a < b < c\}$ of $\{1, \ldots, n+2\}$ gives back $l = a$, $j = b - 1$, $i = c - 2$ with $1 \le l \le j \le i \le n$. This is a bijection, so there are $\binom{n+2}3$ marbles.
