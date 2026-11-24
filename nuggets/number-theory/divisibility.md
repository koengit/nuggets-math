---
title: Divisibility
kind: definition
groups: [topics/number-theory]
requires: [quantifiers]
next: [primes, gcd, modular-arithmetic]
---
*Number theory* (Swedish: *talteori*) studies the properties of the integers $\Z$ and the natural numbers $\N$: divisibility, primes, modular arithmetic.

We write $a \mid b$ — "$a$ divides $b$", "$b$ is a multiple of $a$", "$b$ is divisible by $a$" — when
$$ a \mid b \;\Longleftrightarrow\; \exists c \in \Z.\; a \cdot c = b . $$
So $2 \mid 8$, $6 \mid 18$, but not $5 \mid 12$ (written $5 \nmid 12$). And $2 \mid x$ means exactly that $x$ is even.

Note that $a \mid b$ is a *proposition* (true or false), not a number: don't confuse it with $a / b$. The definition only talks about multiplication, so there is no problem with "dividing by 0": $0 \mid 7$ is simply **false** (no $c$ has $0 \cdot c = 7$), and $0 \mid 0$ is true.

**Properties.** For all integers $a, b, c$:

- $0 \mid a$ only if $a = 0$; and $a \mid 0$ always.
- $1 \mid a$ always.
- If $a \mid b$ and $b \mid c$, then $a \mid c$. *Proof:* $b = d_1 a$ and $c = d_2 b$, so $c = (d_1 d_2) a$.
- If $a \mid b$ and $a \mid c$, then $a \mid b + c$ and $a \mid b - c$. *Proof:* $b = d_1 a$, $c = d_2 a$, so $b \pm c = (d_1 \pm d_2) a$.
- If $a \mid b$, then $a \mid -b$ and $a \mid bc$.

Examples: $2 \mid 6 \wedge 6 \mid 36 \Rightarrow 2 \mid 36$; $5 \mid 10 \wedge 5 \mid 25 \Rightarrow 5 \mid 35$.
