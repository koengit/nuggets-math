---
title: Dividing people into groups
kind: example
groups: [topics/combinatorics]
requires: [permutations-and-combinations]
next: [ex-same-group]
---
**15 students are divided into 4 groups of sizes 4, 4, 4, 3.** In how many ways?

Choose the first group of 4, then the second from the remaining 11, the third from the remaining 7, and the last 3 form the last group:
$$ \binom{15}{4} \binom{11}{4} \binom{7}{4} \binom{3}{3} . $$
But this counts the groups *in order* (first group, second group, …). The three groups of size 4 are interchangeable, and they can be ordered in $3!$ ways, so divide:
$$ \frac{\binom{15}{4} \binom{11}{4} \binom{7}{4} \binom{3}{3}}{3!} . $$
(The group of size 3 cannot be swapped with anything; dividing by $1! = 1$ changes nothing.)

**18 students into groups 4, 4, 4, 3, 3:**
$$ \frac{\binom{18}{4}\binom{14}{4}\binom{10}{4}\binom{6}{3}\binom{3}{3}}{3! \cdot 2!} . $$

Check with [Combinatorics.hs](assets/Combinatorics.hs): 10 people into groups of 4, 3, 3 gives `length (divide [4,3,3] [1..10]) = 4200` with ordered groups, and `length (divideGroups [4,3,3] [1..10]) = 2100` when the order of the groups does not matter ($4200 / 2!$).
