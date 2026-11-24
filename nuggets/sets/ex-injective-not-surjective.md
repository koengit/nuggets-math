---
title: "Exercise: injective but not surjective, and vice versa"
kind: exercise
groups: [topics/sets-and-functions, exercises/week-1]
requires: [injective-surjective]
---
(a) Give a function $f : \N \to \N$ that is injective but not surjective. Explain why.

(b) Give a function $g : \N \to \N$ that is surjective but not injective. Explain why.

## Answer

(a) $f(n) = n + 1$. **Injective:** if $f(n) = f(m)$ then $n + 1 = m + 1$, so $n = m$. **Not surjective:** there is no $n \in \N$ with $f(n) = 0$, since $n + 1 \ge 1$.

(b)
$$ g(n) = \begin{cases} n - 1 & n > 0 \\ 0 & n = 0 \end{cases} $$
**Surjective:** for any $n$, $g(n + 1) = n$. **Not injective:** $g(0) = g(1) = 0$.
