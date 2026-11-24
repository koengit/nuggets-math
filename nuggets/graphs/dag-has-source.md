---
title: "Lemma: every non-empty DAG has a node with nothing pointing to it"
kind: theorem
groups: [topics/graphs]
requires: [topological-ordering, proof-by-contradiction]
next: [topological-ordering-iff-acyclic]
---
Call a node $v$ a **source** (in the Swedish notes: *enstöring*, "loner") if no node points to it:
$$ \text{for all } u \in V:\; (u, v) \notin E, $$
i.e. $\mathrm{indeg}(v) = 0$. A source is a good candidate to start a topological ordering with: nobody points to it!

**Lemma.** Every directed acyclic graph with at least one node has a source.

**Proof.** By contradiction. Assume a directed graph has no cycles and no sources. Take any node. Since it is not a source, some node points to it; take one of those. Repeat. This process never stops. But there are only finitely many nodes, so eventually we come back to a node we have already seen — and then the nodes from that point on form a cycle (read in reverse). This contradicts the assumption. $\square$

The converse does **not** hold: a graph with a source may still have a cycle. Example: $A \to B$, $B \to C$, $C \to B$: $A$ is a source, and $B, C$ form a cycle.
