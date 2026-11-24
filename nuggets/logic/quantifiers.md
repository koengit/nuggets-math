---
title: Predicates and quantifiers
kind: definition
groups: [topics/logic]
requires: [propositions-and-connectives]
next: [quantifier-order, negating-quantifiers, proving-quantified-statements, empty-domain-quantifiers]
---
Propositional logic cannot talk about numbers: "$x > y$" is not true or false until we know $x$ and $y$. **Predicate logic** adds two things.

A **predicate** is a statement about something we do not know yet: "$P(x)$ = $x$ is even", "$Q(x,y)$ = $x + y > 15$". Also $x > y$ is a predicate with two arguments. A predicate with no arguments is just a proposition.

A **quantifier** turns a predicate into a proposition:

- $\forall x \in A.\; P(x)$, "for all $x$ in $A$, $P(x)$ holds" (*universal* quantifier);
- $\exists x \in A.\; P(x)$, "there exists an $x$ in $A$ such that $P(x)$" (*existential* quantifier);
- $\exists! x \in A.\; P(x)$, "there is a *unique* $x$ in $A$ with $P(x)$".

Here $x$ is the *variable*, $A$ the set it ranges over, and $P(x)$ the statement about $x$. For example:

- $\forall x \in \N.\; x \ge 0$ is **true**, but $\forall x \in \Z.\; x \ge 0$ is **false**: the set matters!
- $\exists n \in \N.\; n > 15$ is true; $\forall n \in \N.\; n > 15$ is false.

**Write it properly.** Always say which set you quantify over ($\exists x.\; x > 5$ — which $x$? integers? reals?), and use the dot or brackets to show where the formula about $x$ starts and ends. $\exists P(x)$ is meaningless: quantify over a *variable*, not a formula. We abbreviate $\forall x \in A.\, \forall y \in A.\, \ldots$ as $\forall x, y \in A.\, \ldots$.

**Example: injective and surjective in logic.** For $f : A \to B$ (see [[injective-surjective]]):
$$ f \text{ injective:}\quad \forall x, y \in A.\; (f(x) = f(y) \Rightarrow x = y) \qquad\Big(\equiv\; \neg\, \exists x,y \in A.\; x \ne y \wedge f(x) = f(y)\Big) $$
$$ f \text{ surjective:}\quad \forall y \in B.\; \exists x \in A.\; f(x) = y $$
