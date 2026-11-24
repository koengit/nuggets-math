---
title: "Exercise: two numbers moving towards each other"
kind: exercise
groups: [topics/invariants, exercises/week-3]
requires: [invariants]
---
We write down two natural numbers $A$ and $B$ that are both odd or both even. Then we repeat:

1. If the distance between the two numbers on the paper is 0 or 1, stop.
2. Otherwise, cross out the smaller number and write it again plus 1; cross out the larger number and write it again minus 1.

What can you say about the numbers on the paper when we stop, and about their relation to $A$ and $B$? Prove it with invariants.

## Answer

**Invariant $I_1$:** the two numbers are both odd or both even. True at the start; adding 1 to one and subtracting 1 from the other flips the parity of both, so they stay equal in parity.

So at the end they have the same parity: their distance is even, so it cannot be 1. It must be 0: **at the end, both numbers are equal**.

**Invariant $I_2$:** the sum of the numbers is $A + B$. True at the start; $+1$ and $-1$ cancel.

Combining: at the end the paper says $X, X$ with $X + X = A + B$, so **$X = (A+B)/2$, the average of $A$ and $B$**.

(Does the process stop? Yes: the distance decreases by 2 in every step.)
