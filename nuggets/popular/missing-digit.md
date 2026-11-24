---
title: "Puzzle: which digit is missing from 2²⁹?"
kind: puzzle
groups: [topics/number-theory]
requires: [digit-sum-mod-3, modular-arithmetic-rules]
---
The number $2^{29}$ has 9 digits, all different. Which digit (0–9) is missing? Answer without computing $2^{29}$!

## Answer

**4.**

Let $d$ be the missing digit. The digits are $\{0, \ldots, 9\} \setminus \{d\}$, so
$$ S(2^{29}) = (0 + 1 + \dots + 9) - d = 45 - d . $$
By [[digit-sum-mod-3]] (the mod 9 version): $2^{29} \equiv 45 - d \equiv -d \pmod 9$.

Now compute $2^{29} \bmod 9$: $2^3 = 8 \equiv -1 \pmod 9$, so
$$ 2^{29} = 2^{3 \cdot 9 + 2} = (2^3)^9 \cdot 2^2 \equiv (-1)^9 \cdot 4 = -4 \pmod 9 . $$
So $-d \equiv -4$, i.e. $d \equiv 4 \pmod 9$; with $0 \le d \le 9$, $d = 4$. (Or use $2^6 = 64 \equiv 1 \pmod 9$.)

Check (cheating with a calculator): $2^{29} = 536870912$. Indeed, no 4.
