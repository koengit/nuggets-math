---
title: "Stars and bars: chopping a chocolate bar"
kind: method
groups: [topics/combinatorics, exercises/week-7]
requires: [permutations-and-combinations]
see-also: [tetrahedral-numbers]
---
**Exercise.** How many triples $(x, y, z)$ of **positive** integers are there with $x + y + z = 10$? And with $x + y + z = N$?

*Hint:* a chocolate bar with $N$ pieces in a row. In how many ways can you chop it into three pieces of sizes $x$, $y$, $z$?

## Answer

Chop a bar of $N$ pieces into 3 parts of $x$, $y$, $z$ pieces: then $x + y + z = N$, and every solution corresponds to exactly one way of chopping. There are $N - 1$ places to chop (between neighbouring pieces), and we chop at 2 different places. So the number of solutions is
$$ \binom{N-1}{2} . $$
For $N = 10$: $\binom92 = 36$.

**In general** ("stars and bars"): the number of ways to write $N$ as an ordered sum of $k$ **positive** integers is $\binom{N-1}{k-1}$. For **non-negative** integers ($x, y, z \ge 0$) add 1 to each variable first: $\binom{N + k - 1}{k - 1}$. (Picture: $N$ stars and $k - 1$ bars in a row, in any order.)
