---
title: "Exercise: how many topological orderings?"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [topological-ordering]
---
![a directed acyclic graph](assets/dag.svg)

The graph above has edges $A \to B$, $B \to C$, $B \to D$, $B \to E$, $C \to E$, $D \to E$, $G \to D$, $E \to F$. How many topological orderings does it have?

## Answer

**7.**

$E$ must come after $B$, $C$ and $D$, and hence also after $A$ (which is before $B$) and $G$ (which is before $D$); $F$ must come after $E$. So $E, F$ are always the last two. So we only need to order $A, B, C, D, G$ with the constraints $A$ before $B$, $B$ before $C$ and $D$, and $G$ before $D$.

Without $G$, there are 2 orders: $ABCD$ and $ABDC$. Now insert $G$ anywhere before $D$:

- in $ABCD$, $D$ is 4th, so $G$ can go in 4 places: $GABCD$, $AGBCD$, $ABGCD$, $ABCGD$;
- in $ABDC$, $D$ is 3rd, so $G$ can go in 3 places: $GABDC$, $AGBDC$, $ABGDC$.

That is $4 + 3 = 7$ orderings, each followed by $EF$:
ABCGDEF, ABGCDEF, ABGDCEF, AGBCDEF, AGBDCEF, GABCDEF, GABDCEF.
