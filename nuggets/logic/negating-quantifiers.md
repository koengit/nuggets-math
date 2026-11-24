---
title: Negating quantifiers
kind: theorem
groups: [topics/logic]
requires: [quantifiers, logical-laws]
next: [proving-quantified-statements]
---
$$ \neg\, \forall x \in A.\; P(x) \;\equiv\; \exists x \in A.\; \neg P(x) $$
"It is not the case that $P$ holds for all $x$" means "there is an $x$ for which $P$ does not hold".
$$ \neg\, \exists x \in A.\; P(x) \;\equiv\; \forall x \in A.\; \neg P(x) $$
"There is no $x$ for which $P$ holds" means "$P$ is false for all $x$".

These are De Morgan's laws ([[logical-laws]]) for quantifiers: think of $\forall$ as a big $\wedge$ and $\exists$ as a big $\vee$.

To negate a formula with several quantifiers, push the $\neg$ inwards, flipping every quantifier it passes:
$$ \neg\, \forall x.\, \exists y.\, P(x,y) \;\equiv\; \exists x.\, \neg \exists y.\, P(x,y) \;\equiv\; \exists x.\, \forall y.\, \neg P(x,y). $$

**Natural language is ambiguous.** "Alla har inte rätt" / "everybody is not right" can mean $\forall x \in M.\, \neg \mathrm{Right}(x)$ (nobody is right) or $\neg \forall x \in M.\, \mathrm{Right}(x) \equiv \exists x \in M.\, \neg\mathrm{Right}(x)$ (not everybody is right). Logic forces you to decide.
