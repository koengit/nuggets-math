---
title: Propositions, connectives and truth tables
kind: definition
groups: [topics/logic]
next: [implication, equivalence, logical-laws, quantifiers]
---
Logic is a *language*: for **describing** things precisely, and for **reasoning** about them.

A **proposition** (Swedish: *utsaga*) is a statement that is either *true* or *false*. Examples: "it is raining", "I have an umbrella", "$5 > 17$" (false, but a proposition). Non-examples: "he is beautiful" (who? according to whom?), "tree", "$x + y$" (not a statement).

*Atomic* (primitive) propositions can be combined into bigger ones with **connectives**:

| connective | name | also written |
|---|---|---|
| $A \wedge B$ | and (conjunction) | AND, `&&` |
| $A \vee B$ | or (disjunction) | OR, `\|\|`, $+$ |
| $\neg A$ | not (negation) | NOT, `~` |
| $A \Rightarrow B$ | implies | see [[implication]] |
| $A \Leftrightarrow B$ | if and only if | see [[equivalence]] |

Their meaning is given by **truth tables** (1 = true, 0 = false):

| $A$ | $B$ | $A \wedge B$ | $A \vee B$ | $A \oplus B$ (xor) |
|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 1 |
| 1 | 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 | 0 |

and $\neg 0 = 1$, $\neg 1 = 0$.

Note that **logical or is inclusive**: $A \vee B$ is true when both are true. The everyday "either … or …" is often *exclusive or* (xor), which is true when exactly one is true — it is the same as $A \ne B$, or $\neg(A \Leftrightarrow B)$.

This part of logic is called *propositional logic* (Swedish: *satslogik*). Adding predicates and quantifiers gives [[quantifiers|predicate logic]].
