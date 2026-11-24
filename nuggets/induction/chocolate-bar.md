---
title: "Exercise: breaking a chocolate bar"
kind: exercise
groups: [topics/induction, topics/invariants, exercises/week-3]
requires: [strong-induction]
see-also: [tree-edges]
---
![chocolate](assets/choklad.png)

A chocolate bar consists of $n > 0$ squares in a rectangle. You may break a bar into two smaller bars along the lines between the squares, and repeat this as often as you like. What is the minimum number of breaks needed to break the bar into $n$ single squares? Prove your claim by induction.

## Answer

**Always exactly $n - 1$ breaks**, no matter how you break.

**Proof** by strong induction over $n$. Let $P(n)$ = "breaking a bar of $n$ squares into single squares takes $n - 1$ breaks".

*Base case:* $P(1)$: a single square needs 0 breaks.

*Step case:* $\big(P(1) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for $k \ge 1$. Assume (I.H.) $P(i)$ for $1 \le i \le k$. A bar with $k+1 > 1$ squares needs at least one break. The first break gives two bars with $k_1$ and $k_2$ squares, where $k_1 + k_2 = k + 1$ and $1 \le k_1, k_2 \le k$. By the I.H. (used twice) they need $k_1 - 1$ and $k_2 - 1$ breaks. In total:
$$ 1 + (k_1 - 1) + (k_2 - 1) = k_1 + k_2 - 1 = k. $$
This holds no matter how we make the first break. $\square$

**An alternative argument with an invariant.** At the start there is 1 piece on the table, at the end $n$. Every break replaces one piece by two, so the number of pieces goes up by exactly 1. Hence exactly $n - 1$ breaks. (Invariant: #pieces $=$ #breaks $+ 1$.)
