---
title: "Example: black and white balls in a bag"
kind: example
groups: [topics/invariants]
requires: [invariants]
---
A bag contains 25 black and 25 white balls. Repeat the following until only one ball is left:

1. Take out 2 balls.
2. Put back 1 new ball: **black** if the two had the **same** colour, **white** if they had **different** colours.

What colour is the last ball? (A: black, B: white, C: it cannot be known.)

**Model it as a step system.** State: $(x, y)$ = (number of black, number of white balls). Initial state: $(25, 25)$. Steps:

- two black: $(x, y) \to (x - 2 + 1, y) = (x-1, y)$;
- two white: $(x, y) \to (x + 1, y - 2)$;
- one of each: $(x, y) \to (x - 1, y - 1 + 1) = (x - 1, y)$.

**Invariant:** $P(x,y)$ = "$y$ is odd".

- Initially $y = 25$: odd.
- Each step changes $y$ by $0$ or $-2$, so odd stays odd.

The last state is $(1, 0)$ or $(0, 1)$. In $(1, 0)$, $y = 0$ is not odd. So the last state is $(0, 1)$: **the last ball is white**, no matter in which order the balls are drawn.
