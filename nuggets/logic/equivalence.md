---
title: "Equivalence: if and only if"
kind: definition
groups: [topics/logic]
requires: [implication]
next: [logical-laws]
---
$A \Leftrightarrow B$ ("$A$ if and only if $B$", often written "iff"; Swedish: *om och endast om*) is true when $A$ and $B$ have the **same** truth value.

| $A$ | $B$ | $A \Rightarrow B$ | $B \Rightarrow A$ | $(A \Rightarrow B) \wedge (B \Rightarrow A)$ | $A \Leftrightarrow B$ |
|---|---|---|---|---|---|
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 | 1 |

The last two columns are equal, so
$$ A \Leftrightarrow B \;\equiv\; (A \Rightarrow B) \wedge (B \Rightarrow A). $$
This is how we usually *prove* an equivalence: prove both directions separately ("$\Rightarrow$" and "$\Leftarrow$").

When two formulas have the same truth table, we say they are *(logically) equivalent* and write $\equiv$. So $\equiv$ talks *about* formulas, while $\Leftrightarrow$ is a connective *inside* a formula: $F \equiv G$ means exactly that $F \Leftrightarrow G$ is true in every row.
