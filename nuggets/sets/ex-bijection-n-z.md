---
title: "Exercise: a bijection between ℕ and ℤ"
kind: exercise
groups: [topics/sets-and-functions, exercises/week-1]
requires: [hilbert-hotel]
---
Find a bijection between $\N$ and $\Z$, showing that there are as many natural numbers as integers.

## Answer

Map the even natural numbers to the non-negative integers, and the odd ones to the negative integers: $0 \mapsto 0$, $2 \mapsto 1$, $4 \mapsto 2$, …, and $1 \mapsto -1$, $3 \mapsto -2$, $5 \mapsto -3$, …:
$$ f(n) = \begin{cases} n/2 & n \text{ even} \\ -(n+1)/2 & n \text{ odd} \end{cases} $$

**Injective.** Suppose $f(n) = f(m)$. Even $n$ give results $\ge 0$ and odd $n$ results $< 0$, so $n$ and $m$ are both even or both odd. If both even: $n/2 = m/2$, so $n = m$. If both odd: $-(n+1)/2 = -(m+1)/2$, so $n = m$.

**Surjective.** Any $y \ge 0$ is reached: $f(2y) = y$. Any $y < 0$ is reached: $-2y - 1$ is odd and $\ge 1$, and $f(-2y-1) = -(-2y - 1 + 1)/2 = y$.
