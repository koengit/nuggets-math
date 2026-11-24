---
title: Simple induction
kind: method
groups: [topics/induction]
requires: [invariants]
next: [sum-1-to-n, geometric-sum, how-to-write-induction-proofs, strong-induction]
---
**Mathematical induction** proves statements of the form $\forall n \in \N.\; P(n)$.

> If we show
> - the **base case** $P(0)$, and
> - the **step case** $P(k) \Rightarrow P(k+1)$, for all $k \ge 0$,
>
> then we have shown $\forall n \in \N.\; P(n)$.

*Why does this work?* It is an [[invariants|invariant]] argument for the step system with states $k \in \N$, initial state $0$, and steps $k \to k+1$: $P(0)$ holds initially, and $P$ is preserved by every step, so $P$ holds in every reachable state — and every natural number is reachable. Or think of dominoes: the first one falls, and each falling domino knocks over the next.

In the step case, the assumption $P(k)$ is called the **induction hypothesis** (I.H.).

**Both parts are needed, for the right range of $k$.** Look at three predicates:

| $n$ | 0 | 1 | 2 | 3 | 4 | … |
|---|---|---|---|---|---|---|
| "$n \ge 0$" | T | T | T | T | T | … |
| "$n \ge 3$" | F | F | F | T | T | … |
| "$n \ne 1$" | T | F | T | T | T | … |

"$n \ge 3$" has a valid step ($k \ge 3 \Rightarrow k+1 \ge 3$) but no base case. "$n \ne 1$" has a base case, and its step $k \ne 1 \Rightarrow k + 1 \ne 1$ is true for all $k \ge 1$ — but not for $k = 0$. The step must work for *every* $k$ from the base case on.

The base case does not have to be 0: base case $P(b)$ plus step $P(k) \Rightarrow P(k+1)$ for all $k \ge b$ proves $P(n)$ for all $n \ge b$.
