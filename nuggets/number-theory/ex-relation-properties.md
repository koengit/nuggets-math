---
title: "Exercise: properties of divisibility, coprimality, true and false"
kind: exercise
groups: [topics/relations, topics/number-theory, exercises/week-4]
requires: [relations-properties, gcd]
---
For each relation (on the natural numbers), is it reflexive? symmetric? transitive? an equivalence relation?

- $R_1(x, y) = x \mid y$ (divisibility)
- $R_2(x, y) = (\gcd(x, y) = 1)$ (no common divisors)
- $R_3(x, y) = \mathbf{true}$ (relates everything to everything)
- $R_4(x, y) = \mathbf{false}$ (relates nothing)

## Answer

**$R_1$ ($\mid$):** reflexive ($x \mid x$); **not** symmetric ($2 \mid 4$, but $4 \nmid 2$); transitive ([[divisibility]]). Not an equivalence relation. (It is a partial order on $\N$.)

**$R_2$ (coprime):** **not** reflexive ($\gcd(3, 3) = 3$); symmetric ($\gcd(x,y) = \gcd(y,x)$); **not** transitive ($\gcd(2,3) = 1$ and $\gcd(3,4) = 1$, but $\gcd(2, 4) = 2$).

**$R_3$ (true):** reflexive, symmetric and transitive, since $R_3(x, y)$ is true whatever $x$ and $y$ are. **An equivalence relation** (with one class).

**$R_4$ (false):** **not** reflexive ($R_4(x, x)$ is false for any $x$ (*)). But it **is** symmetric and transitive! Both properties are implications with $R_4(\ldots)$ on the left-hand side, and an implication with a false hypothesis is true.

So only $R_3$ is an equivalence relation.

(*) Strictly speaking, $R_4$ *is* reflexive on the empty set: $\forall x \in \emptyset.\, R_4(x,x)$ is true ([[empty-domain-quantifiers]]).
