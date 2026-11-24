---
title: Arithmetic sums
kind: theorem
groups: [topics/sums]
requires: [sum-1-to-n]
see-also: [geometric-sum]
---
An **arithmetic sum** adds terms that increase by a fixed amount each time, like $5 + 8 + 11 + 14 + 17$ (start $A = 5$, step $B = 3$, last index $n = 4$):
$$ A + (A + B) + (A + 2B) + \dots + (A + nB) = \sum_{i=0}^{n} (A + iB). $$

Splitting the sum and using [[sum-1-to-n]]:
$$
\sum_{i=0}^{n} (A + iB) = \Big(\sum_{i=0}^n A\Big) + \Big(\sum_{i=0}^n i\Big) B = (n+1)A + \frac{n(n+1)}{2}B = (n+1)\Big(A + \frac n2 B\Big).
$$
In words: the number of terms times the average of the first and last term, $\frac{A + (A + nB)}{2}$.

Check: $5 + 8 + 11 + 14 + 17 = 55 = 5 \cdot (5 + \frac42 \cdot 3)$.
