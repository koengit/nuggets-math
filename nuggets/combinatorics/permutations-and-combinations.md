---
title: "Permutations and combinations: n!, n!/(n−k)! and n choose k"
kind: definition
groups: [topics/combinatorics]
requires: [counting-principles]
next: [dividing-into-groups, pascals-triangle, words-with-repeated-letters]
---
**Permutations.** In how many ways can $n$ students stand in a row? $n$ choices for the first place, $n-1$ for the second, …:
$$ n \cdot (n-1) \cdot (n-2) \cdots 1 = n! \qquad (n \text{ factorial}). $$
By convention $0! = 1$ (there is one way to arrange nothing).

**$k$-permutations.** $n$ students, $k \le n$ chairs in a row: how many ways to seat $k$ of them?
$$ \underbrace{n \cdot (n-1) \cdots (n - k + 1)}_{k \text{ factors}} = \frac{n!}{(n-k)!} . $$
Example: $n = 10$, $k = 3$: $10 \cdot 9 \cdot 8 = \frac{10!}{7!} = 720$.

**Combinations.** How many ways to choose a *group* of $k$ students out of $n$, where the order within the group does not matter? Each group of $k$ is counted $k!$ times among the $k$-permutations (ABC, ACB, BAC, …), so by the division principle:
$$ \binom{n}{k} = \frac{n!}{(n-k)!\, k!} \qquad \text{("}n\text{ choose }k\text{")} . $$

Some values: $\binom n0 = \binom nn = 1$, $\binom n1 = n$, $\binom n2 = \frac{n(n-1)}{2}$, and $\binom nk = \binom{n}{n-k}$ (choosing who is in is the same as choosing who is out).

The course's [Combinatorics.hs](assets/Combinatorics.hs) implements `fact`, `choose` (enumerating all $k$-subsets) and `over`, and checks that they agree.
