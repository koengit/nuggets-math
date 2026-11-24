---
title: "Exercise: the rationals fit in Hilbert's hotel"
kind: exercise
groups: [topics/sets-and-functions, exercises/week-1]
requires: [hilbert-hotel]
---
Show that all rational numbers $\Q$ fit into Hilbert's hotel: describe a way to give every rational number a room, and explain why every rational gets one.

*Hint:* first do it for the positive rationals, then adapt the method to all of them.

## Answer

**Positive rationals.** Write every positive rational as a fraction $p/q$ with $p, q \ge 1$, and arrange all fractions in an infinite grid: row $p$, column $q$. Walk through the grid **diagonal by diagonal**: first all fractions with $p + q = 2$, then $p + q = 3$, then $p + q = 4$, …:
$$ \tfrac11;\quad \tfrac12, \tfrac21;\quad \tfrac13, \tfrac22, \tfrac31;\quad \tfrac14, \tfrac23, \tfrac32, \tfrac41;\quad \ldots $$
Skip any fraction whose value has already appeared ($\frac22 = \frac11$). Give the guests rooms $0, 1, 2, \ldots$ in this order. Every diagonal is finite, so every fraction $p/q$ is reached after finitely many steps (on diagonal $p + q$): every positive rational gets a room.

**All rationals.** Put $0$ in room 0. If the positive rational $r$ was in room $k$ in the list above, put $r$ in room $2k + 1$ and $-r$ in room $2k + 2$.

(Rows with $q = 0$ would not work: a row is infinite, and you would never get to the next row. That is why we go diagonally.)
