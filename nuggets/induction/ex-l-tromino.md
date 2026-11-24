---
title: "Exercise: tiling a 2ⁿ × 2ⁿ grid minus one square with L-pieces"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [simple-induction]
---
![L-shape](assets/L.png)

Take a $1024 \times 1024$ grid of squares and remove one square (any one). Show that the rest can be covered exactly by L-shaped pieces as above (3 squares each), without pieces sticking out or covering the removed square.

*Hint:* prove it for every $2^n \times 2^n$ grid, by induction over $n$.

## Answer

Let $P(n)$ = "every $2^n \times 2^n$ grid with one square removed (any square) can be tiled with L-pieces". Note $1024 = 2^{10}$.

*Base case:* $P(0)$: a $1 \times 1$ grid with its one square removed is empty: nothing to tile. (Or start at $P(1)$: a $2 \times 2$ grid minus one square *is* an L-piece.)

*Step case:* $P(k) \Rightarrow P(k+1)$. Take a $2^{k+1} \times 2^{k+1}$ grid with one square removed. Divide it into four $2^k \times 2^k$ quadrants. The removed square lies in one of them. Place **one L-piece in the centre** of the grid, covering exactly one square of each of the *other three* quadrants (the three squares that touch the centre point). Now each of the four quadrants is a $2^k \times 2^k$ grid with exactly one square removed (or covered), so by the I.H. each can be tiled. $\square$

(Sanity check: $4^n - 1$ is always divisible by 3, since $4 \equiv 1 \pmod 3$.) This proof is also a recursive algorithm.
