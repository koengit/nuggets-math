---
title: "Exercise: contrapositive and converse"
kind: exercise
groups: [topics/logic, exercises/week-2]
requires: [implication]
---
The **contrapositive** of $A \Rightarrow B$ is $\neg B \Rightarrow \neg A$. The **converse** of $A \Rightarrow B$ is $B \Rightarrow A$.

Think of three propositions from daily life that contain an implication (for example: "if it rains and the sun shines, then there is a rainbow"). Under what conditions are they true or false? What happens if you take the contrapositive — is it still true? And the converse?

## Answer

Take "if it rains and the sun shines, then there is a rainbow". It is false only in a situation where it rains and the sun shines and there is *no* rainbow.

- The **contrapositive**, "if there is no rainbow, then it is not the case that it rains and the sun shines", is false in exactly the same situation. **The contrapositive always means the same** as the original: $A \Rightarrow B \equiv \neg B \Rightarrow \neg A$ (compare the truth tables).
- The **converse**, "if there is a rainbow, then it rains and the sun shines", is a *different* statement: it is false when there is a rainbow at a waterfall on a dry day. The converse can be true or false independently of the original.

Mixing up an implication with its converse is one of the most common reasoning errors (see [[wason-selection-task]]). Proving the contrapositive instead of the original is a perfectly valid proof technique.
