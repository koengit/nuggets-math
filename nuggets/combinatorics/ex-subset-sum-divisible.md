---
title: "Exercise: some subset sum is divisible by n"
kind: exercise
groups: [topics/combinatorics, exercises/week-7]
requires: [pigeonhole-principle, modular-arithmetic]
---
Given $n \ge 1$ integers $a_1, \ldots, a_n$. Show that there is a non-empty subset whose sum is a multiple of $n$.

Example: $n = 5$ and $\{1, 2, 4, 6, 8\}$: pick $\{2, 4, 6, 8\}$, with sum $20$.

*Hint:* the pigeonhole principle.

## Answer

Look at the $n + 1$ partial sums
$$ s_0 = 0,\quad s_1 = a_1,\quad s_2 = a_1 + a_2,\quad \ldots,\quad s_n = a_1 + \dots + a_n . $$
**Pigeons:** these $n+1$ sums. **Holes:** the $n$ congruence classes modulo $n$. So two of them are congruent: $s_i \equiv s_j \pmod n$ with $i < j$. Then $n \mid s_j - s_i = a_{i+1} + a_{i+2} + \dots + a_j$, which is the sum of the non-empty subset $\{a_{i+1}, \ldots, a_j\}$. $\square$

(The proof even gives a subset of *consecutive* elements.)
