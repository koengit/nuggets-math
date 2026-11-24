---
title: "Exercise: repeatedly remove the least number"
kind: exercise
groups: [topics/invariants, exercises/week-3]
requires: [invariants]
see-also: [max-element-invariant]
---
You are given a non-empty list of natural numbers, and repeat:

1. If the list has only one number, stop.
2. Otherwise, remove the least number (if there are several, remove one of them).

What can you say about the last number left, compared to the original list? Prove it using an invariant.

## Answer

The last number is the **maximum** $M$ of the original list.

**Invariant:** "$M$ is in the list, and it is the greatest number in the list."

- *Initially* this holds by definition of $M$.
- *Step:* we remove a least number $x$. If $x < M$ we did not remove $M$. If $x = M$, then $M$ was the least *and* the greatest, so all numbers in the list equal $M$; since there were at least two, a copy of $M$ remains. Either way $M$ is still in the list, and still the greatest.

So the invariant also holds for the last list, which has one number: it must be $M$. (This is a special case of [[max-element-invariant]].)
