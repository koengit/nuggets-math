---
title: "Exercise: are ⇒ and ⇔ commutative or associative?"
kind: exercise
groups: [topics/logic, exercises/week-2]
requires: [equivalence, operator-properties]
---
(a) Is implication ($\Rightarrow$) commutative? Associative?
(b) Is equivalence ($\Leftrightarrow$) commutative? Associative?

## Answer

(a) **Not commutative:** $\mathbf{false} \Rightarrow \mathbf{true}$ is true, but $\mathbf{true} \Rightarrow \mathbf{false}$ is false.
**Not associative:** $(\mathbf{false} \Rightarrow \mathbf{false}) \Rightarrow \mathbf{false}$ is false, but $\mathbf{false} \Rightarrow (\mathbf{false} \Rightarrow \mathbf{false})$ is true.

(b) **Both commutative and associative.** Commutativity is clear from the definition (same truth value). For associativity, write out the truth table of $(p \Leftrightarrow q) \Leftrightarrow r$ and $p \Leftrightarrow (q \Leftrightarrow r)$: both are true exactly when an *even* number of $p, q, r$ is false.
