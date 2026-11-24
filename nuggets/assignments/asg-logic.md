---
title: "Exercises: simplifying, formalizing and proving"
kind: exercise
groups: [topics/logic, assignments/assignment-2]
requires: [logical-laws, quantifiers, proving-quantified-statements]
---
*(Assignment questions; no answers are published.)*

**1.** Simplify, and check with a truth table: (a) $(p \wedge q) \vee q$  (b) $p \Rightarrow (p \Rightarrow q)$  (c) $\neg(\neg p \wedge \neg q)$. "Simplify" means: find the simplest/smallest formula that means the same.

**2.** Write a logic formula for: (a) "There is a natural number that is larger than some odd natural number." (b) "Every odd integer can be written as $2m+1$ for some integer $m$." You may use $\mathrm{Odd}(x)$ and $x > y$. (Examples: [[predicate-logic-formalizing]].)

**3.** Write each statement as a formula, say whether it is true, and prove or disprove it: (a) "for all primes $p > 2$, $p+2$ or $p+4$ is also prime"; (b) "for all odd natural numbers $n$, $n^2 - 1$ is divisible by 4".

**4.** (a) Find a formula with at least two quantifiers that is **false** over $\N$ but **true** over $\Q$. (b) Find a true formula with one $\forall$ and one $\exists$ that becomes **false** when you replace the $\forall$ by $\exists$ and the $\exists$ by $\forall$ (in the same positions). Say which sets you quantify over. (Compare [[quantifier-order]], which *swaps the order* instead.)
