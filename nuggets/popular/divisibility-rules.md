---
title: Divisibility rules for 2 to 9
kind: method
groups: [topics/number-theory]
requires: [modular-arithmetic]
next: [digit-sum-mod-3]
---
How can you see whether a number is divisible by $d$, from its decimal digits?

| $d$ | rule |
|---|---|
| 1 | always |
| 2 | the last digit is divisible by 2 |
| 3 | the **sum of all digits** is divisible by 3 |
| 4 | the last 2 digits form a number divisible by 4 (2783**2**: 32 ✓) |
| 5 | the last digit is 0 or 5 |
| 6 | divisible by 2 and by 3 |
| 7 | no simple rule… |
| 8 | the last 3 digits form a number divisible by 8 (11723**100**: 100 ✗) |
| 9 | the **sum of all digits** is divisible by 9 |

**Why the last digits?** $10 = 2 \cdot 5$, $100 = 2^2 \cdot 5^2$ (divisible by 4), $1000 = 2^3 \cdot 5^3$ (divisible by 8). A number is (its last $k$ digits) + (a multiple of $10^k$), so only the last $k$ digits matter.

**Why the digit sum?** Because $10 \equiv 1 \pmod 3$ (and $\pmod 9$), so a number is congruent to its digit sum: [[digit-sum-mod-3]]. Example: $3 \nmid 125$ since $1 + 2 + 5 = 8$; $3 \mid 225$ since $2 + 2 + 5 = 9$.
