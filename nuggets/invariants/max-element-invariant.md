---
title: "Example: finding the maximum by removing smaller elements"
kind: example
groups: [topics/invariants]
requires: [invariants]
see-also: [ex-remove-least]
---
Consider this process:

1. Start with a non-empty list $L_0$ of integers.
2. While at least two numbers are left: find two elements $a$ and $b$ in the list with $a \le b$, and remove $a$.
3. When one number is left, stop.

Which number is left? The **largest element of $L_0$**. Let us prove it with an [[invariants|invariant]].

The *state* is the current list $L$; the initial state is $L_0$; step 2 takes us from $L$ to $L'$.

Let $m$ be the largest element of $L_0$. **Invariant** $P(L)$: "$m$ is the largest element of $L$" (in particular, $m$ is in $L$).

*Initially:* $P(L_0)$ holds, by definition of $m$.

*Step:* assume $P(L)$, and we remove $a$ where $a \le b$ for some other element $b$ of $L$. Could we have removed (the last copy of) $m$? Then $a = m$, so $m \le b$. But also $b \le m$, since $m$ is the largest element of $L$. So $b = m$, and since $b$ is not removed, $m$ is still in $L'$. Removing elements cannot create larger ones, so $m$ is the largest element of $L'$.

So $P$ is an invariant, and the last remaining element must be $m$. $\square$
