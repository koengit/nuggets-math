---
title: The Monty Hall problem
kind: puzzle
groups: [topics/probability]
requires: [probability]
see-also: [three-cards]
---
A game show has 3 doors, A, B, C. Behind one is a lot of money; the other two are empty. You choose a door, say A. The host, who knows where the money is, now opens **another** door that is **empty**, and offers you to switch to the remaining closed door. Should you?

## Answer

**Always switch: you win with probability $\frac23$.**

When you chose A, you picked the right door with probability $\frac13$, and a wrong door with probability $\frac23$. The host's action does not change this.

- If A was right ($\frac13$): switching loses.
- If A was wrong ($\frac23$): the money is behind one of the other two doors, and the host *had to* open the empty one; the remaining door has the money. Switching wins.

The common mistake: "two doors left, so 50/50". The two remaining doors are not equally likely, because the host's choice depends on where the money is (see [[probability]]: count equally likely outcomes only).
