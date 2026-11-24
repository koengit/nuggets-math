---
title: Equational reasoning
kind: method
groups: [topics/proofs]
requires: [proof-methods-overview]
next: [inequational-reasoning]
---
In *equational reasoning* we transform one expression into another one step at a time, where each step replaces something by something equal.

**To prove:** $(x+y)(x-y) = x^2 - y^2$.

**Proof:**

$$
\begin{aligned}
& (x+y)(x-y) \\
=\; & x^2 - xy + yx - y^2 && \text{[expand]} \\
=\; & x^2 - y^2 && \text{[}-xy\text{ and }yx\text{ cancel]}
\end{aligned}
$$
$\square$

A clear way to present such a proof is to write each expression on its own line, and to write next to each step *why* it is allowed (a definition, a lemma, the induction hypothesis, basic arithmetic, …).
