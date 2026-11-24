---
title: "Example: size and height of binary trees"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction-general, inequational-reasoning]
---
```haskell
data Tree = Empty | Node Tree Tree

size Empty      = 0
size (Node p q) = 1 + size p + size q

height Empty      = 0
height (Node p q) = 1 + (height p `max` height q)
```

**To prove:** $\mathtt{size}\ x \le 2^{\mathtt{height}\ x} - 1$, for all trees $x$.

**Proof:** by structural induction on $x$. Let $P(x)$ = "$\mathtt{size}\ x \le 2^{\mathtt{height}\ x} - 1$".

**Base case:** $P(\mathtt{Empty})$:
$$
\begin{aligned}
& \mathtt{size\ Empty} \\
=\; & 0 && \text{[def size]}\\
=\; & 2^0 - 1 \\
=\; & 2^{\mathtt{height\ Empty}} - 1 && \text{[def height]}
\end{aligned}
$$

**Step case:** $(P(p) \wedge P(q)) \Rightarrow P(\mathtt{Node}\ p\ q)$.

- *assume:* $\mathtt{size}\ p \le 2^{\mathtt{height}\ p} - 1$ and $\mathtt{size}\ q \le 2^{\mathtt{height}\ q} - 1$ (I.H.)
- *show:* $\mathtt{size}\ (\mathtt{Node}\ p\ q) \le 2^{\mathtt{height}\ (\mathtt{Node}\ p\ q)} - 1$

Write $h = \max(\mathtt{height}\ p, \mathtt{height}\ q)$.
$$
\begin{aligned}
& \mathtt{size}\ (\mathtt{Node}\ p\ q) \\
=\; & 1 + \mathtt{size}\ p + \mathtt{size}\ q && \text{[def size]}\\
\le\; & 1 + (2^{\mathtt{height}\ p} - 1) + (2^{\mathtt{height}\ q} - 1) && \text{[I.H. twice]}\\
=\; & 2^{\mathtt{height}\ p} + 2^{\mathtt{height}\ q} - 1 \\
\le\; & 2 \cdot 2^{h} - 1 && [v + w \le 2\max(v,w)]\\
=\; & 2^{1 + h} - 1 \\
=\; & 2^{\mathtt{height}\ (\mathtt{Node}\ p\ q)} - 1 && \text{[def height]}
\end{aligned}
$$
$\square$

So a tree of height $h$ has at most $2^h - 1$ nodes; equivalently, a tree with $n$ nodes has height at least $\log_2(n+1)$. This is why balanced search trees give logarithmic lookup times.
