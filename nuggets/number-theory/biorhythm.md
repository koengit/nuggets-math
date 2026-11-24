---
title: "Motivation: biorhythms and which numbers au + bv can make"
kind: example
groups: [topics/number-theory]
requires: [gcd]
next: [pulverizer]
---
In the 1970s and 80s, "biorhythms" were popular (a kind of horoscope): from the day you were born, your *physical*, *emotional* and *intellectual* condition were supposed to go up and down in waves with periods of 23, 28 and 33 days.

The mathematical question hiding here: which numbers can be written as
$$ 23a + 28b + 33c, \qquad a, b, c \in \Z \;? $$
Or, simpler: which numbers can be written as $7u + 11v$ with $u, v \in \Z$? Try it! It turns out: **every** integer. But $15a + 25b$ is always divisible by 5, so it can only make multiples of 5.

The key is whether we can make **1**. If $au + bv = 1$, then multiplying by $c$ gives $a(uc) + b(vc) = c$: every integer. And by [[pulverizer]], we can make 1 exactly when $\gcd(a, b) = 1$. For example $7 \cdot (-3) + 11 \cdot 2 = 1$.

Equations like $7u + 11v = 1$, where we only want integer solutions, are called **Diophantine equations** ([[diophantine-equations]]).
