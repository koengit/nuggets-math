---
title: "Exercise: the sticks game"
kind: exercise
groups: [topics/invariants, exercises/week-2]
requires: [invariants]
---
We start with a pile of $N$ sticks. You and I take turns, and you start. In each turn, the player removes 1, 2 or 3 sticks. The player who has to take the **last** stick loses.

(a) Show that if we start with 5 sticks, I can always win.
(b) Show that if we start with 25 sticks, I can always win.
(c) For which $N$ can I always win? For which can you?
(d) What does this game have to do with invariants?

## Answer

(a) Whatever you take ($1, 2, 3$), I take $4$ minus that ($3, 2, 1$). Then 1 stick is left, and you must take it.

(b) Same strategy: after each of your moves I take so that together we took 4. The pile goes $25 \to 21 \to 17 \to 13 \to 9 \to 5 \to 1$ after each of my turns, and you must take the last stick.

(c) **I (the second player) can always win exactly when $N \equiv 1 \pmod 4$**, and **you (the first player) can always win otherwise**: then you first take $1$, $2$ or $3$ sticks to leave a number $\equiv 1 \pmod 4$, and from then on you play my strategy.

(d) The winning strategy maintains an **invariant**: *after the winning player's move, the number of sticks is $\equiv 1 \pmod 4$*. The opponent always breaks it (taking 1–3 sticks from a pile $\equiv 1$ never leaves a pile $\equiv 1$), and the winning player can always restore it (by completing the round to 4). Since $1 \equiv 1$, the loser ends up facing the single last stick. A game strategy is just a step system where we control half of the steps.
