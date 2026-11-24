---
title: "Example: the mutilated chessboard"
kind: example
groups: [topics/invariants]
requires: [invariants]
next: [ex-mutilated-boards]
---
Take an $8 \times 8$ chessboard and remove two **opposite corners**. $64 - 2 = 62$ squares remain. Can you cover the board exactly with 31 dominoes ($2 \times 1$ tiles), without anything sticking out?

**No.** Model placing dominoes as a step system. State: $(x, y)$ = (number of uncovered black squares, number of uncovered white squares). Opposite corners have the same colour, so the initial state is $(32, 30)$ (if the removed corners were white). A domino always covers one black and one white square: $(x, y) \to (x - 1, y - 1)$.

**Invariant:** $x \ne y$.

- Initially $32 \ne 30$.
- If $x \ne y$ then $x - 1 \ne y - 1$.

A fully covered board would be the state $(0, 0)$, where the invariant is false. So it is impossible. $\square$

The invariant is really "$x - y = 2$", but "$x \ne y$" is all we need.
