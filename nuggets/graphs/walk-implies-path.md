---
title: "Lemma: every walk can be shortened to a path"
kind: theorem
groups: [topics/graphs]
requires: [walks-paths-cycles, strong-induction]
---
**Lemma.** In a (simple or directed) graph: if there is a walk from $u$ to $v$, then there is a path from $u$ to $v$.

**Proof.** By [[strong-induction]] on the length of the walk.

*Base case:* a walk of length 0 is a single node, which is a path.

*Step case:* take a walk from $u$ to $v$ of length $n+1$, and assume (I.H.) the lemma for all walks of length $\le n$. If the walk is already a path, we are done. Otherwise some node $w$ appears twice, so the walk looks like
$$ u \overset{p}{\leadsto} w \overset{q}{\leadsto} w \overset{r}{\leadsto} v $$
where $q$ is a *non-empty* closed walk. Cutting out $q$ gives the walk $u \overset{p}{\leadsto} w \overset{r}{\leadsto} v$, which is strictly shorter. By the I.H. there is a path from $u$ to $v$. $\square$

This is why, when we ask "is there a way to get from $u$ to $v$?", it does not matter whether we talk about walks or paths.
