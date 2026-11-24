---
title: "Exercise: does this graph have a topological ordering?"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [topological-ordering-iff-acyclic]
---
Which of these directed graphs has a topological ordering? For the one that has one, construct it.

(a) Nodes $x_1, \ldots, x_7$, edges
$x_1 \to x_3$, $x_3 \to x_1$, $x_1 \to x_2$, $x_3 \to x_2$, $x_1 \to x_6$, $x_6 \to x_2$, $x_6 \to x_5$, $x_2 \to x_4$, $x_7 \to x_2$, $x_7 \to x_4$.

(b) Nodes $A, \ldots, H$ (tasks; an arrow $S \to T$ means $S$ must be done before $T$), edges
$A \to D$, $D \to E$, $B \to E$, $B \to F$, $C \to F$, $E \to G$, $F \to H$.

(These are Figure 10.3 and the graph of Problem 10.15 in the MCS book.)

## Answer

(a) **No.** There is a cycle $x_1 \to x_3 \to x_1$, so by [[topological-ordering-iff-acyclic]] there is no topological ordering.

(b) **Yes.** It has no cycles. Repeatedly taking a source gives for example
$$ A, B, C, D, E, F, G, H . $$
Check: every arrow ($A{\to}D$, $D{\to}E$, $B{\to}E$, $B{\to}F$, $C{\to}F$, $E{\to}G$, $F{\to}H$) points from left to right.
