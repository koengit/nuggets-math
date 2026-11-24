---
title: "Exercise: which boards with two corners removed can be tiled?"
kind: exercise
groups: [topics/invariants]
requires: [mutilated-chessboard]
---
Take an $n \times m$ board ($n, m \ge 1$, $nm \ge 3$) and remove two **opposite** corners. For which $n$ and $m$ can the rest be covered exactly by dominoes? For the impossible ones, use an invariant; for the possible ones, show how to do it.

## Answer

**It is possible exactly when $n + m$ is odd.**

*Impossible when $n + m$ is even.* Colour the board like a chessboard: square $(i,j)$ is black when $i + j$ is even. The corners $(1,1)$ and $(n,m)$ have the same colour exactly when $1 + 1$ and $n + m$ have the same parity, i.e. when $n + m$ is even. Then the remaining board has unequal numbers of black and white squares, and the invariant of [[mutilated-chessboard]] shows that no tiling exists.

*Possible when $n + m$ is odd.* Then one of $n, m$ is even; say the number of rows $n$ is even. If $m = 1$, the board is a single column of even length $n$, and removing both ends leaves an even column, which is easy to tile. If $m \ge 2$, build a **cycle through all squares**: walk along row 1 from column 1 to column $m$; then snake through columns $2..m$ of rows $2, 3, \ldots, n$ (row 2 from right to left, row 3 from left to right, …). Since $n$ is even, row $n$ is walked from right to left and ends in column 2. Step to column 1 and walk up column 1 back to row 1. Consecutive squares on this cycle are neighbours, so their colours alternate. Removing two squares of **different** colours (the two corners) cuts the cycle into two paths that each have an even number of squares, and each path can be tiled with dominoes laid along it.

This argument (Gomory's theorem) works for removing *any* two squares of different colours.
