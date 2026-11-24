---
title: How to prove (or disprove) ∀ and ∃ statements
kind: method
groups: [topics/logic, topics/proofs]
requires: [quantifiers]
next: [predicate-logic-proving]
---
What you need to do depends on the shape of the statement:

| Statement | To show it is **true** | To show it is **false** |
|---|---|---|
| $\forall x \in S.\; P(x)$ | a **general argument**: take an *arbitrary* $x \in S$ and show $P(x)$ | **one counterexample**: an $x \in S$ with $\neg P(x)$ |
| $\exists x \in S.\; P(x)$ | **one example**: an $x \in S$ with $P(x)$ | a **general argument** that $\neg P(x)$ for every $x \in S$ |

This follows from the rules for negation:
$$ \neg \forall x.\,P(x) \;\Leftrightarrow\; \exists x.\,\neg P(x) \qquad\qquad \neg \exists x.\,P(x) \;\Leftrightarrow\; \forall x.\,\neg P(x) $$

Checking examples never proves a $\forall$-statement (see [[chinese-hypothesis]] for a statement that holds for every small number you try, and is still false).

For nested quantifiers, work from the outside in: to prove $\forall x.\,\exists y.\,P(x,y)$, take an arbitrary $x$ and then *construct* a $y$ (which may depend on $x$).
