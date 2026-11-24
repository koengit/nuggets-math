---
title: Laws of logic
kind: theorem
groups: [topics/logic]
requires: [equivalence]
next: [negating-quantifiers]
---
All of these can be checked with a truth table.

**De Morgan's laws**
$$ \neg (A \wedge B) \equiv \neg A \vee \neg B \qquad\qquad \neg (A \vee B) \equiv \neg A \wedge \neg B $$

**Double negation**
$$ \neg \neg A \equiv A $$

**Implication**
$$ A \Rightarrow B \;\equiv\; \neg (A \wedge \neg B) \;\equiv\; \neg A \vee \neg\neg B \;\equiv\; \neg A \vee B $$
(the middle step is De Morgan, the last double negation).

**Contrapositive**
$$ A \Rightarrow B \;\equiv\; \neg B \Rightarrow \neg A $$

**Distributivity**
$$ A \wedge (B \vee C) \equiv (A \wedge B) \vee (A \wedge C) \qquad\qquad A \vee (B \wedge C) \equiv (A \vee B) \wedge (A \vee C) $$

**Commutativity and associativity** of $\wedge$, $\vee$ (and $\Leftrightarrow$, see [[ex-implication-associative]]):
$$ A \wedge B \equiv B \wedge A \qquad A \wedge (B \wedge C) \equiv (A \wedge B) \wedge C $$
$$ A \vee B \equiv B \vee A \qquad A \vee (B \vee C) \equiv (A \vee B) \vee C $$

With these laws we can rewrite formulas step by step, just like algebra (see [[equational-reasoning]]), without writing truth tables.
