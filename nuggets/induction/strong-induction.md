---
title: Strong induction
kind: method
groups: [topics/induction]
requires: [simple-induction]
next: [fibonacci-bound, fast-power-correct, prime-factorization-exists, sqrt2-irrational-strong-induction]
---
In [[simple-induction]], the step from $k$ to $k+1$ may only use $P(k)$. Sometimes we need more: $P(k-1)$, or $P(k/2)$, or "$P$ of some smaller number". **Strong induction** (Swedish: *stark induktion*) allows assuming **all** previous cases:

> If we show
> - $P(0)$, and
> - $\big(P(0) \wedge P(1) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, for all $k \ge 0$,
>
> then $\forall n \in \N.\; P(n)$.

Simple induction: $P(0)$ is known, and to get $P(k+1)$ we may use $P(k)$. Strong induction: $P(0)$ is known, and to get $P(k+1)$ we may use $P(0), P(1), \ldots, P(k)$ — all the way along the line.

Strong induction is not more powerful than simple induction (apply simple induction to $Q(n) = P(0) \wedge \dots \wedge P(n)$), but it is often much more convenient.

**When the step uses $P(k)$ and $P(k-1)$**, as for Fibonacci-like definitions, you need *two* base cases ($P(0)$ and $P(1)$), and the step case is for $k \ge 1$. See [[fibonacci-bound]].

**Typical uses:** recursive functions that recurse on something other than $n - 1$ ([[fast-power-correct]]), splitting things into smaller parts ([[chocolate-bar]], [[prime-factorization-exists]], [[tree-edges]]), and "smallest counterexample" arguments ([[sqrt2-irrational-strong-induction]]).
