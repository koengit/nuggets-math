---
title: "Exercise: dice with different values"
kind: exercise
groups: [topics/probability, exercises/week-7]
requires: [probability, permutations-and-combinations]
next: [birthday-paradox]
---
(a) You throw 2 dice. What is the probability that the two values are different?
(b) You throw 3 dice. What is the probability that all three values are different? That at least two dice show the same value?
(c) You throw $n$ dice. What is the probability that at least two show the same value?

## Answer

(a) There are $6 \cdot 6 = 36$ outcomes, of which $6 \cdot 5 = 30$ have different values: $\frac{30}{36} = \frac56$.

(b) There are $6^3 = 216$ outcomes. All different: $6 \cdot 5 \cdot 4 = 120$, so $P(\text{all different}) = \frac{120}{216} = \frac59$. At least two equal is the opposite: $\frac{216 - 120}{216} = \frac{96}{216} = \frac49$.

(c) With $T = 6^n$ and $B = 6 \cdot 5 \cdots (6 - n + 1) = \frac{6!}{(6-n)!}$ (all different), for $n \le 6$:
$$ P = \frac{T - B}{T} = 1 - \frac{6!}{(6-n)!\; 6^n} . $$
For $n > 6$ the probability is 1 ([[pigeonhole-principle]]).
