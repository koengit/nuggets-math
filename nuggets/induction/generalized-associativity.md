---
title: "Theorem: with an associative operator, brackets don't matter"
kind: theorem
groups: [topics/induction]
requires: [strong-induction, operator-properties]
see-also: [parallel-sum]
---
Let $\oplus$ be an **associative** operator: $(a \oplus b) \oplus c = a \oplus (b \oplus c)$. This only talks about three elements. Does it follow that *any* way of putting brackets in $a_1 \oplus a_2 \oplus \dots \oplus a_n$ gives the same result?

**Theorem.** For all $n \ge 1$ and all $a_1, \ldots, a_n$: every bracketing of $a_1 \oplus \dots \oplus a_n$ equals the right-nested one $a_1 \oplus (a_2 \oplus (\dots \oplus a_n))$.

**Proof** by strong induction over $n$. Let $P(n)$ = "for all $a_1..a_n$, every bracketing of $a_1 \oplus \dots \oplus a_n$ equals $R(a_1..a_n) := a_1 \oplus (a_2 \oplus (\dots \oplus a_n))$".

*Base case:* $P(1)$: $a_1 = a_1$.

*Step case:* $\big(P(1) \wedge \dots \wedge P(k)\big) \Rightarrow P(k+1)$, $k \ge 1$. Take any bracketing of $a_1 \oplus \dots \oplus a_{k+1}$. Its outermost operator splits it as $X \oplus Y$, where $X$ is a bracketing of $a_1..a_j$ and $Y$ of $a_{j+1}..a_{k+1}$, for some $1 \le j \le k$. By the I.H., $Y = R(a_{j+1}..a_{k+1})$.

- *Case $j = 1$:* $X = a_1$, so the whole thing is $a_1 \oplus R(a_2..a_{k+1}) = R(a_1..a_{k+1})$.
- *Case $j > 1$:* by the I.H., $X = a_1 \oplus X'$ with $X' = R(a_2..a_j)$. Then
$$ X \oplus Y = (a_1 \oplus X') \oplus Y = a_1 \oplus (X' \oplus Y) $$
by associativity. Now $X' \oplus Y$ is a bracketing of the $k$ elements $a_2..a_{k+1}$, so by the I.H. it equals $R(a_2..a_{k+1})$, and we get $a_1 \oplus R(a_2..a_{k+1}) = R(a_1..a_{k+1})$. $\square$

This is why we may write $a_1 \oplus \dots \oplus a_n$ without brackets — and why we may evaluate it in any grouping, for example in parallel ([[parallel-sum]]).
