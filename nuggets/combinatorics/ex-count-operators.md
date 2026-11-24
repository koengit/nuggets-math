---
title: "Exercise: how many binary operators are there on a finite set?"
kind: exercise
groups: [topics/combinatorics, topics/sets-and-functions, exercises/week-7]
requires: [counting-sets, operator-properties]
---
Let $A = \{1, 2, \ldots, n\}$. How many different operators $A \times A \to A$ exist?

## Answer

Look at the function table of the operator. It has one entry for every pair of arguments: $n \cdot n = n^2$ entries. In each entry we choose a result: $n$ possibilities. That is $n^2$ independent choices between $n$ things:
$$ n^{(n^2)} . $$
This is $|A \times A \to A| = |A|^{|A \times A|}$ ([[counting-sets]]). For $A = \{1,2,3\}$: $3^9 = 19683$. For the booleans: $2^4 = 16$ boolean operators.
