---
title: Russian peasant multiplication
kind: example
groups: [topics/invariants]
requires: [invariants]
---
A way to multiply that only needs *adding*, *doubling* and *halving*. Let us compute $22 \times 24$.

Make a table. Start with the row $22, 24$. On each next row, *halve* the left number (rounding down) and *double* the right one. Stop at 1. Then cross out the rows where the left number is **even**, and add up the remaining right numbers:

| $x$ | $y$ | |
|---|---|---|
| ~~22~~ | ~~24~~ | even: cross out |
| 11 | 48 | |
| 5 | 96 | |
| ~~2~~ | ~~192~~ | even: cross out |
| 1 | 384 | |
| | **528** | $= 48 + 96 + 384$ |

And indeed $22 \times 24 = 528$. Why on earth does this work?

**Make it a step system.** Instead of summing at the end, keep a running sum $s$. The state is $(x, y, s)$, starting in $(a, b, 0)$. A step:
$$ (x, y, s) \longrightarrow \begin{cases} (x/2,\; 2y,\; s) & x \text{ even} \\ ((x-1)/2,\; 2y,\; s + y) & x \text{ odd} \end{cases} $$
until $x = 0$:

| $x$ | $y$ | $s$ | |
|---|---|---|---|
| 22 | 24 | 0 | start |
| 11 | 48 | 0 | 22 even: nothing |
| 5 | 96 | 48 | 11 odd: add 48 |
| 2 | 192 | 144 | 5 odd: add 96 |
| 1 | 384 | 144 | 2 even: nothing |
| 0 | (768) | 528 | 1 odd: add 384 |

**Invariant:** $P(x,y,s)$ = "$x \cdot y + s = a \cdot b$". (Check it on every row above!)

- *Initially:* $a \cdot b + 0 = a \cdot b$.
- *Case $x$ even:* assume $xy + s = ab$. Then $\frac x2 \cdot 2y + s = xy + s = ab$.
- *Case $x$ odd:* assume $xy + s = ab$. Then $\frac{x-1}{2} \cdot 2y + (s + y) = xy - y + s + y = xy + s = ab$.

So $P$ is an invariant. At the end $x = 0$, so $0 \cdot y + s = ab$: **$s = a \cdot b$**. $\square$

(Another example: $47 \times 17$: rows $47{:}17$, $23{:}34$, $11{:}68$, $5{:}136$, $\cancel{2{:}272}$, $1{:}544$, sum $17+34+68+136+544 = 799$.) This is exactly how computers multiply in binary: the odd rows are the 1-bits of $a$.
