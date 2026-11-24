---
title: Quantifying over the empty set
kind: remark
groups: [topics/logic]
requires: [quantifiers]
see-also: [relations-properties]
---
What do $\forall x \in \emptyset.\; P(x)$ and $\exists x \in \emptyset.\; P(x)$ mean?

- $\exists x \in \emptyset.\; P(x)$ is **always false**: there is no $x$ at all, so certainly no $x$ with $P(x)$.
- $\forall x \in \emptyset.\; P(x)$ is **always true** ("vacuously true"), whatever $P$ is — even $\forall x \in \emptyset.\; \mathbf{false}$ is true.

The second one follows from the first and [[negating-quantifiers]]: $\forall x \in \emptyset.\, P(x) \equiv \neg \exists x \in \emptyset.\, \neg P(x) \equiv \neg\mathbf{false}$.

In everyday language: "all cars on the street are red" is true if there are no cars on the street. (Nobody can show you a car that is not red.)

This matters in practice, e.g. for base cases ("all elements of the empty list are positive" is true), and for relations: the empty relation on the empty set is reflexive ([[ex-relation-properties]]).
