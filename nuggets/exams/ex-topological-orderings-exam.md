---
title: "Exercise: listing topological orderings"
kind: exercise
groups: [topics/graphs, exams/old-exams]
requires: [topological-ordering-iff-acyclic]
---
In each part, give **all** topological orderings and explain why your list is complete. (An empty list can be a complete list!)

(a) The graph with edges $B \to A$, $B \to C$, $A \to D$, $A \to E$, $D \to F$, $E \to F$, $F \to C$. Then add an extra edge $C \to D$, and answer again.

(b) The graph with edges $A \to B$, $B \to C$, $C \to E$, $E \to D$, $D \to B$, $E \to F$. Then remove the edge $E \to D$, and answer again.

(c) The graph with edges $A \to B$, $B \to C$, $C \to E$, $B \to D$, $D \to A$. How many topological orderings does it have? You may now remove one edge, so as to make the number of topological orderings as large as possible. Which edge do you remove, and why?

## Hint

First look for cycles ([[topological-ordering-iff-acyclic]]). Then build orderings by repeatedly choosing a node with nothing (remaining) pointing to it, and branch whenever there is a choice ([[ex-count-topological-orderings]]).
