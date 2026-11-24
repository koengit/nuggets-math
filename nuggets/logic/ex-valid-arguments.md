---
title: "Exercise: which arguments are valid?"
kind: exercise
groups: [topics/logic, exercises/week-2]
requires: [implication]
---
Are these valid arguments? Explain.

(a) From $p \Rightarrow q$ and $q \Rightarrow p$, conclude $p \Leftrightarrow q$.
(b) From $p \Rightarrow r$ and $\neg p \Rightarrow r$, conclude $r$.
(c) From $p \Rightarrow q$, conclude $q \Rightarrow p$.
(d) From $p \Rightarrow (q \vee r)$ and $p \Rightarrow \neg q$, conclude $p \Rightarrow r$.
(e) From $p \Rightarrow q$ and $q \Rightarrow p$, conclude $p$.

An argument is *valid* if in every row of the truth table where all hypotheses are true, the conclusion is true too.

## Answer

(a) **Valid.** This is the definition of equivalence in terms of implication ([[equivalence]]).

(b) **Valid.** This is reasoning by cases ([[case-splitting]]): either $p$ or $\neg p$, and $r$ follows in both cases.

(c) **Not valid.** With $p$ false and $q$ true, the hypothesis is true but the conclusion is false. (Confusing an implication with its converse.)

(d) **Valid.** If $p$ is true, then $q \vee r$ and $\neg q$, so $r$. If $p$ is false, $p \Rightarrow r$ is true anyway.

(e) **Not valid.** With $p$ and $q$ both false, both hypotheses are true but the conclusion is false.
