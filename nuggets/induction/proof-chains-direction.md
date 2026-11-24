---
title: Write chains from one side to the other
kind: remark
groups: [topics/proofs, topics/induction]
requires: [equational-reasoning, inequational-reasoning]
---
To prove $A = B$, there are two common styles.

**Preferred: a chain from $A$ to $B$.**
$$ A = A_1 = A_2 = \dots = B, $$
with a reason ("why") for each step.

**Risky: working on both sides at once.** Write $A = B$, transform both sides into $A_1 = B_1$, then $A_2 = B_2$, …, until you reach something obviously true like $A_{10} = A_{10}$. This is a valid proof *only if every step can be reversed*, because what you really need is the implication from $A_{10} = A_{10}$ back up to $A = B$. With equalities that is usually fine, but it is easy to slip in a step that is not reversible (squaring both sides, multiplying by something that may be 0, …).

With **inequalities** the two-sided style is even more dangerous: going from $A \le B$ to $A_1 \le B_1$ the left side must move in one direction and the right side in the other ($A \le A_1$ and $B_1 \le B$), which is easy to get wrong.

So: start at one side, end at the other, and say why every step holds.
