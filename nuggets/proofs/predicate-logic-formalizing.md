---
title: "Exercise: from sentences to formulas"
kind: exercise
groups: [topics/logic]
requires: [quantifiers]
next: [predicate-logic-proving]
---
Translate each statement into a formula of predicate logic. You may use the predicates

- $\mathrm{Prime}(x)$: "$x$ is a prime number",
- $\mathrm{Even}(x)$: "$x$ is even",
- $x < y$ (and $=, >, \le, \ge, \ne$),
- $x \mid y$: "$x$ divides $y$".

1. All numbers are prime numbers.
2. There is an even prime number.
3. No prime number greater than 2 is even.
4. The sum of any two integers is greater than 0.
5. For every even integer there are two odd integers whose sum equals that number.
6. There is a natural number that is smaller than all other natural numbers.
7. There is a number that divides all integers.
8. There is no number that is greater than itself.
9. All natural numbers are either even or prime.
10. Two different prime numbers cannot divide each other.

## Answer

1. $\forall x \in \Z.\; \mathrm{Prime}(x)$

2. $\exists x \in \Z.\; \mathrm{Even}(x) \wedge \mathrm{Prime}(x)$ (quantifying over $\N$ is fine too, since the set was not given).

3. $\forall x \in \Z.\; (\mathrm{Prime}(x) \wedge x > 2) \Rightarrow \neg\mathrm{Even}(x)$

   We use an implication, because we want to say "for all $x$: IF $x$ is prime and greater than 2, THEN $x$ is not even". An equally correct answer is
   $\forall x \in \Z.\; \mathrm{Prime}(x) \Rightarrow (x > 2 \Rightarrow \neg\mathrm{Even}(x))$: "for all primes …" is $\forall x.\,\mathrm{Prime}(x) \Rightarrow \ldots$, and "if it is greater than 2 it is not even" is $x > 2 \Rightarrow \neg \mathrm{Even}(x)$.

4. $\forall x, y \in \Z.\; x + y > 0$ (or, more verbosely, $\forall x \in \Z.\, \forall y \in \Z.\; x+y > 0$).

5. $\forall x \in \Z.\; \mathrm{Even}(x) \Rightarrow \exists y, z \in \Z.\; (\neg\mathrm{Even}(y) \wedge \neg\mathrm{Even}(z) \wedge y + z = x)$

   Build it piece by piece: "for all even integers …" is $\forall x \in \Z.\, \mathrm{Even}(x) \Rightarrow \ldots$; "there are two odd integers …" is $\exists y,z \in \Z.\, \neg\mathrm{Even}(y) \wedge \neg\mathrm{Even}(z) \wedge \ldots$; "whose sum is that number" is $y + z = x$.

6. $\exists x \in \N.\; \forall y \in \N.\; (y \ne x \Rightarrow x < y)$

   "There is a natural number $x$ such that …" is $\exists x \in \N \ldots$; "for all *other* natural numbers $y$ …" is $\forall y \in \N.\, y \ne x \Rightarrow \ldots$; "$x$ is smaller than $y$" is $x < y$.

7. $\exists x \in \Z.\; \forall y \in \Z.\; x \mid y$

8. $\neg \exists x \in \Z.\; x > x$

9. $\forall x \in \N.\; \mathrm{Even}(x) \vee \mathrm{Prime}(x)$

10. $\forall x, y \in \Z.\; (\mathrm{Prime}(x) \wedge \mathrm{Prime}(y) \wedge x \ne y) \Rightarrow \neg(x \mid y \vee y \mid x)$
