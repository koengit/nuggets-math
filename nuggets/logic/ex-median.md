---
title: "Exercise: the median of three booleans"
kind: exercise
groups: [topics/logic, exercises/week-2]
requires: [propositions-and-connectives]
---
The function $\mathsf{median} : \mathbb{B} \times \mathbb{B} \times \mathbb{B} \to \mathbb{B}$ computes the median of its three arguments: the value in the middle after sorting. For example $\mathsf{median}(1,0,1) = 1$, since sorting gives $(0,1,1)$.

(a) Give the truth table of $\mathsf{median}$.
(b) Express $\mathsf{median}$ with the connectives $\wedge, \vee, \neg$.
(c) (*) What is the smallest formula for $\mathsf{median}$?

## Answer

(a)

| $a$ | $b$ | $c$ | median |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

(b) The median is 1 exactly when **at least two** of the arguments are 1 (it is the *majority* function):
$$ \mathsf{median}(a,b,c) = (a \wedge b) \vee (b \wedge c) \vee (a \wedge c). $$

(c) A smaller equivalent formula, with 4 connectives instead of 5:
$$ (b \wedge (a \vee c)) \vee (a \wedge c). $$
(I don't think there is a smaller one; if you find one, tell me!)
