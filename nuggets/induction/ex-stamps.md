---
title: "Exercise: paying postage with 4 kr and 5 kr stamps"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [simple-induction]
see-also: [diophantine-equations]
---
![4kr](assets/frim4.jpg) ![5kr](assets/frim5.jpg)

A country only has stamps of 4 kr and 5 kr. Show that every amount of 12 kr or more can be paid exactly with these stamps. (Examples: $12 = 4+4+4$, $13 = 4+4+5$, $14 = 4+5+5$.)

## Answer

**Proof** by induction with step 4. Let $P(n)$ = "there are $a, b \in \N$ with $n = 4a + 5b$".

*Base cases:* $P(12)$: $4+4+4$. $P(13)$: $4+4+5$. $P(14)$: $4+5+5$. $P(15)$: $5+5+5$.

*Step case:* $P(k) \Rightarrow P(k+4)$, for $k \ge 12$. Assume (I.H.) $k = 4a + 5b$. Then $k + 4 = 4(a+1) + 5b$. $\square$

*Why is this a valid induction?* The four base cases cover $12, 13, 14, 15$, and the step takes each of them to $+4, +8, \ldots$, so together they reach every number $\ge 12$. (Formally: strong induction, where for $n \ge 16$ we use $P(n-4)$.)

Note that 11 cannot be paid: the largest amount that cannot be paid with stamps $a$ and $b$ (with $\gcd(a,b) = 1$) is $ab - a - b = 20 - 9 = 11$.
