---
title: "Exercise: true and false ∀(A⇒B) and ∃(A∧B) formulas"
kind: exercise
groups: [topics/logic, exercises/week-2]
requires: [quantifiers, proving-quantified-statements]
---
(1) Consider formulas of the shape $\forall x \in S.\; (A(x) \Rightarrow B(x))$.
 (a) Give an example that is false. What do you have to do to show that it is false?
 (b) Give an example that is true. What do you have to do to show that it is true?

(2) The same for formulas of the shape $\exists x \in S.\; (A(x) \wedge B(x))$.

(3) The shape $\exists x \in S.\; (A(x) \Rightarrow B(x))$ is not used much in mathematics. Can you see why?

Don't forget to say which set $S$ you quantify over.

## Answer

All examples quantify over $\N$.

(1a) $A(x)$ = "$x$ is even", $B(x)$ = "$x > 10$". To show that it is false, find *one* $x$ for which $A(x)$ is true and $B(x)$ is false: $x = 6$.

(1b) $A(x)$ = "$x > 10$", $B(x)$ = "$x > 5$". To show that it is true, argue for *every* $x$: any $x$ greater than 10 is also greater than 5.

(2a) $A(x)$ = "$x$ is even", $B(x)$ = "$x$ is odd". To show that it is false, argue that *no* $x$ is both even and odd; i.e. that for all $x$, $x$ is not even or not odd.

(2b) $A(x)$ = "$x > 10$", $B(x)$ = "$x$ is odd". To show that it is true, give *one* example: $x = 13$.

(3) Because it hardly says anything. To make it true, we only need one $x$ for which $A(x) \Rightarrow B(x)$ is true — and *any* $x$ with $A(x)$ false will do! So:

- if $A(x)$ is false for some $x$, the formula is simply true;
- if $A(x)$ is true for all $x$, it says the same as $\exists x.\, B(x)$, in a more complicated way.

What people usually *mean* is $\exists x.\, (A(x) \wedge B(x))$: "there is an $x$ with property $A$ that also has property $B$". The natural pairs are **$\forall$ with $\Rightarrow$** and **$\exists$ with $\wedge$**.
