---
title: "A combinatorial proof: 1 + 2 + … + (n−1) = n(n−1)/2"
kind: example
groups: [topics/combinatorics, topics/sums]
requires: [counting-principles]
see-also: [sum-1-to-n]
---
In how many ways can you choose 2 different pizzas out of $n$?

**Count it one way** (multiplication and division principles): $n$ choices for the first, $n - 1$ for the second, and every pair is counted twice:
$$ \frac{n(n-1)}{2} . $$

**Count it another way** (addition principle): number the pizzas $1..n$. Pairs whose smaller pizza is pizza 1: $n - 1$ of them. Smaller pizza 2: $n - 2$. … Smaller pizza $n - 1$: 1. In total
$$ (n-1) + (n-2) + \dots + 1 . $$

Both count the same thing, so they are equal:
$$ 1 + 2 + \dots + (n-1) = \frac{n(n-1)}{2}. $$

This is a **combinatorial proof**: we prove an equation by showing that both sides count the same set. Often shorter and more insightful than an induction proof ([[sum-1-to-n]]). Also: a simple graph with $n$ nodes has at most $\frac{n(n-1)}{2}$ edges.
