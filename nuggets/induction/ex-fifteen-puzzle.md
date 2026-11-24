---
title: "Exercise: the 15-puzzle cannot be solved"
kind: exercise
groups: [topics/invariants, exercises/week-3]
requires: [invariants]
---
In the 15-puzzle, tiles $1..15$ sit in a $4 \times 4$ frame with one empty square; a move slides a tile next to the empty square into it. Start from the position where everything is in order *except that 14 and 15 are swapped*, with the empty square at the bottom right. Show that you can never reach the solved position (everything in order, empty square at the bottom right).

(This is Problem 6.8 in the MCS book.)

## Answer

Read the tiles row by row, left to right (skipping the empty square), and count the **inversions**: pairs of tiles in the wrong order. Let $r$ be the row of the empty square.

**Invariant:** *the parity of (number of inversions $+ \; r$) never changes.*

- A **horizontal** move does not change the reading order, and not the row: nothing changes.
- A **vertical** move takes a tile and moves it past exactly the 3 tiles between its old and new position in the reading order. Each of those 3 pairs flips between being an inversion or not, so the number of inversions changes by $\pm1$ or $\pm3$: an odd number. At the same time $r$ changes by $\pm 1$. Odd + odd = even: the parity of the sum is unchanged.

Start: 1 inversion (15 before 14), $r = 4$: sum 5, odd. Goal: 0 inversions, $r = 4$: sum 4, even. So the goal can never be reached. $\square$
