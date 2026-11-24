---
title: "Exercise: a new connective"
kind: exercise
groups: [topics/logic, exams/old-exams]
requires: [logical-laws, operator-properties]
---
We define a new connective $\heartsuit$ by its truth table:

| $p$ | $q$ | $p \heartsuit q$ |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

(a) Give a formula expressing $p \heartsuit q$ with the usual connectives ($\wedge, \vee, \Rightarrow, \Leftrightarrow, \neg$). Show with a truth table that it is correct.

(b) Is $\heartsuit$ associative? Prove or disprove.

## Hint

When exactly is $p \heartsuit q$ true? For (b): to disprove associativity, one well-chosen assignment of $p, q, r$ suffices; to prove it, you need all 8 rows.
