---
title: "Puzzle: which digits appear in the look-and-say sequence?"
kind: puzzle
groups: [topics/invariants]
requires: [invariants]
---
John Conway's *look-and-say* sequence starts with 1, and each next term *describes* the previous one: "one 1" gives 11, "two 1s" gives 21, "one 2, one 1" gives 1211, …
$$ 1,\; 11,\; 21,\; 1211,\; 111221,\; 312211,\; 13112221,\; \ldots $$
Which digits can ever appear?

## Answer

**Only 1, 2 and 3.**

*First attempt at an invariant:* "the number contains only digits 1–3". It holds for 1. But is it preserved? No: the number 111123 contains only digits 1–3, but its successor is 411213, which contains a 4. The invariant is too weak; we need to know more.

*Stronger invariant:* $P(n)$ = "$n$ contains only digits 1–3, **and** no digit is repeated more than 3 times in a row".

- *Initially:* 1 has only the digit 1, repeated once. ✓
- *Step:* assume $P(k)$, and let $k'$ be the next term. Write $k'$ as pairs "count, digit": $\ldots n_1 b_1\, n_2 b_2\, n_3 b_3 \ldots$
  - *Only digits 1–3:* each digit $b_i$ comes from $k$, so it is 1–3; each count $n_i$ is a run length in $k$, so it is at most 3 (by the I.H.).
  - *No runs longer than 3:* since the groups describe *maximal* runs of $, consecutive groups describe different digits:  
e b_{i+1}$. In '$, counts and digits alternate, so any 4 consecutive positions contain exactly two digit positions, and these are , b_{i+1}$ of two consecutive groups. If those 4 positions were all equal, we would have  = b_{i+1}$. Impossible.

So $P$ is an invariant: only the digits 1, 2, 3 ever appear. (Strengthening the invariant to make the proof go through is a very common trick — as with strengthening the induction hypothesis.)
