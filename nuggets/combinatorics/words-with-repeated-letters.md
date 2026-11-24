---
title: "Arranging letters with repetitions"
kind: method
groups: [topics/combinatorics]
requires: [permutations-and-combinations]
---
**How many different strings can be made from the letters of BANANA?**

If all 6 letters were different, there would be $6!$ strings. But the 3 A's are interchangeable: every string is counted $3!$ times (once for each way of ordering the A's among themselves), and the 2 N's $2!$ times. So by the division principle:
$$ \frac{6!}{3!\,2!\,1!} = 60 . $$

In general, a word with $n$ letters, where the letters occur $k_1, k_2, \ldots, k_r$ times ($k_1 + \dots + k_r = n$), has
$$ \frac{n!}{k_1!\,k_2!\cdots k_r!} $$
arrangements. Equivalently: first choose the positions for the A's, $\binom63$, then for the N's among the remaining, $\binom32$, then the B: $\binom63\binom32\binom11 = 20 \cdot 3 \cdot 1 = 60$.

**With a restriction: the two N's next to each other.** Glue NN into one block: arrange B, A, A, A, [NN]: $\frac{5!}{3!} = 20$ strings. **Not next to each other:** $60 - 20 = 40$ (subtraction principle).

**No two A's next to each other.** First arrange the other letters B, N, N: $\frac{3!}{2!} = 3$ ways. They leave 4 gaps (before, between, after: _B_N_N_), and the 3 A's must go into different gaps: $\binom43 = 4$. Total: $3 \cdot 4 = 12$.

The course's [Combinatorics.hs](assets/Combinatorics.hs) helps check such answers by brute force: generate `permutations`, remove duplicates with `nub`, and filter.
