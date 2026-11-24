---
title: Invariants
kind: method
groups: [topics/invariants]
requires: [implication]
next: [balls-in-a-bag, max-element-invariant, russian-multiplication, mutilated-chessboard, simple-induction]
---
Many problems in computer science (and puzzles) are about a process that takes steps. To reason about them, we **model the problem as a step system**:

- a set of **states** $s$;
- an **initial state** $s_0$ (where we start);
- the **steps** $s \to s'$ we may take.

An **invariant** is a property that holds in *all states reachable from the initial state*. To prove that a predicate $P(s)$ on states is an invariant, show:

1. **It holds initially:** $P(s_0)$.
2. **It is preserved by every step:** if $s \to s'$, then $P(s) \Rightarrow P(s')$.

Then $P$ holds in every reachable state — and in particular in the final state, which is usually what we want to know something about.

Finding the right invariant is a *creative* process; checking it is routine. Typical invariants: "$y$ is odd" ([[balls-in-a-bag]]), "$x \ne y$" ([[mutilated-chessboard]]), "$x \cdot y + s = a \cdot b$" ([[russian-multiplication]]).

[[simple-induction]] is the same idea, for the step system with states $0, 1, 2, \ldots$ and steps $k \to k+1$.

**A riddle.** The fountain of wisdom tells you how to live forever: (1) never lie, and (2) say, today: *"I will say this sentence again tomorrow."* (The invariant: "today I say the sentence, and I do not lie" — so tomorrow you say it again, and so on, forever.)
