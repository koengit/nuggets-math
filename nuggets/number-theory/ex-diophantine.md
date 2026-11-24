---
title: "Exercise: do these Diophantine equations have solutions?"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [diophantine-equations]
---
Do these equations have solutions $x, y \in \Z$? If so, give three different ones.

(a) $14x + 21y = 30$  (b) $9x + 15y = 21$

## Answer

(a) **No solutions:** the left-hand side is divisible by $\gcd(14, 21) = 7$, and 30 is not.

(b) $\gcd(9, 15) = 3$ and $3 \mid 21$, so there are solutions. Divide by 3: $3x + 5y = 7$. The Pulverizer gives $3 \cdot 2 + 5 \cdot (-1) = 1$. Multiply by 7: $x = 14$, $y = -7$. More solutions: subtract 5 from $x$ and add 3 to $y$: $(9, -4)$, $(4, -1)$, $(-1, 2)$, …

Check: $9 \cdot 4 + 15 \cdot (-1) = 36 - 15 = 21$. ✓
