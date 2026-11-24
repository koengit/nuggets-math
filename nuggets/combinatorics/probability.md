---
title: "Probability: good cases over total cases"
kind: definition
groups: [topics/combinatorics, topics/probability]
requires: [counting-principles]
next: [birthday-paradox, ex-dice, monty-hall, three-cards]
---
A **probability** is a number between 0 (cannot happen) and 1 (must happen). When all outcomes are **equally likely**:
$$ P = \frac{G}{T} = \frac{\text{number of good outcomes}}{\text{total number of outcomes}} . $$
Sometimes it is easier to count the **bad** outcomes $B$: then $P = \frac{T - B}{T}$.

Example: the probability of throwing a six with a die: $G = 1$, $T = 6$, $P = \frac16$.

**A classic mistake:** "there are two possibilities, a six or no six, so the probability is $\frac12$". Wrong! The formula $G/T$ only works if all the outcomes you count are **equally likely**, and "six" and "not six" are not. Always count outcomes that are equally likely (here: the 6 faces).
