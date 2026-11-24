---
title: "Operators: associativity, commutativity, unit elements, inverses"
kind: definition
groups: [topics/sets-and-functions]
requires: [functions]
next: [ex-operators, generalized-associativity]
---
An **operator** (binary operation) on a set $A$ is a function $\# : A \times A \to A$. Instead of $\#(x, y)$ we usually write $x \# y$, like $x + y$ or $x \cdot y$.

An operator can have these properties:

- **associative:** $(x \# y) \# z = x \# (y \# z)$ for all $x, y, z$;
- **commutative:** $x \# y = y \# x$ for all $x, y$;
- a **unit element** (identity or *neutralt element*) $e$: $e \# x = x = x \# e$ for all $x$;
- **inverses** (when there is a unit $e$): $y$ is an inverse of $x$ if $x \# y = e = y \# x$.

**Examples.**

| operator | associative | commutative | unit |
|---|---|---|---|
| $+$ on $\Z$ | yes | yes | 0 (inverse of $x$: $-x$) |
| $\cdot$ on $\Z$ | yes | yes | 1 |
| $-$ on $\Z$ | no: $(1-1)-1 \ne 1-(1-1)$ | no | none |
| `++` on strings | yes: `("apa"++"bepa")++"x" = "apa"++("bepa"++"x")` | no: `"apa"++"bepa" ≠ "bepa"++"apa"` | `""` |
| average $x \,\#\, y = \frac{x+y}{2}$ on $\R$ | **no** | yes | none |
| $\cup$, $\cap$ on sets | yes | yes | $\emptyset$, resp. the universe |

Average is not associative: $(0 \# 0) \# 4 = 2$, but $0 \# (0 \# 4) = 1$.
