---
title: "Exercise: everything with only ⇒ and false"
kind: exercise
groups: [topics/logic, exercises/week-2]
requires: [logical-laws]
---
Express each formula using **only** implication ($\Rightarrow$) and the constant $\mathbf{false}$. Use truth tables to check the equivalences.

(a) $\neg p$  (b) $p \vee q$  (c) $p \wedge q$  (d) $p \Leftrightarrow q$

## Answer

(a) $\neg p \;\equiv\; p \Rightarrow \mathbf{false}$.

(b) $p \vee q \;\equiv\; \neg p \Rightarrow q \;\equiv\; (p \Rightarrow \mathbf{false}) \Rightarrow q$.

(c) $p \wedge q \;\equiv\; \neg (p \Rightarrow \neg q) \;\equiv\; (p \Rightarrow (q \Rightarrow \mathbf{false})) \Rightarrow \mathbf{false}$.

(d) $p \Leftrightarrow q \;\equiv\; (p \Rightarrow q) \wedge (q \Rightarrow p)$, and using (c):
$$ \big((p \Rightarrow q) \Rightarrow ((q \Rightarrow p) \Rightarrow \mathbf{false})\big) \Rightarrow \mathbf{false}. $$

So $\{\Rightarrow, \mathbf{false}\}$ is enough to express every connective. (Answer (a) is also the logic behind [[proof-by-contradiction]].)
