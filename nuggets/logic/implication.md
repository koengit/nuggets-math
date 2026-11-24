---
title: Implication
kind: definition
groups: [topics/logic]
requires: [propositions-and-connectives]
next: [wason-selection-task, equivalence, contrapositive-and-converse]
---
"If it rains, then I have my umbrella" is written $A \Rightarrow B$ ("$A$ implies $B$"), where $A$ is the *hypothesis* (or premise) and $B$ the *conclusion*.

| $A$ | $B$ | $A \Rightarrow B$ |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

The implication is only **false** when the hypothesis is true and the conclusion false. In particular, when $A$ is false, $A \Rightarrow B$ is true, whatever $B$ is. That often feels strange at first. Think of it as a promise: "if it rains, I'll have my umbrella" is not broken on a dry day.

Useful equivalent forms (check them with truth tables!):
$$ A \Rightarrow B \;\equiv\; \neg (A \wedge \neg B) \;\equiv\; \neg A \vee B . $$

**Implication is transitive:** if $A \Rightarrow B$ and $B \Rightarrow C$, then $A \Rightarrow C$. Example: "can drive a car" $\Rightarrow$ "has a licence" $\Rightarrow$ "age $\ge 18$". But it is **not symmetric**: having a licence does not imply that you can drive (see [[contrapositive-and-converse]]).
