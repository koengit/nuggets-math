---
title: Modular arithmetic (congruences)
kind: definition
groups: [topics/number-theory]
requires: [divisibility]
next: [modular-arithmetic-rules, chinese-remainder-theorem, relations-properties]
---
"Clock arithmetic": it is 7 o'clock now; what time is it in 50 hours? $50 = 4 \cdot 12 + 2$, so the same as in 2 hours: $7 + 2 = 9$ o'clock. Today is Tuesday; which day is it in 30 days? $30 = 4 \cdot 7 + 2$, so Tuesday + 2 = Thursday.

**Definition.** For $m \ge 1$:
$$ a \equiv b \pmod m \;\Longleftrightarrow\; m \mid a - b . $$
"$a$ is congruent to $b$ modulo $m$". Equivalently: $a$ and $b$ have the same remainder when divided by $m$. (If $a = k_1 m + r$ and $b = k_2 m + r$, then $a - b = (k_1 - k_2) m$.)

Examples: $50 \equiv 2 \pmod{12}$, $13 \equiv 1 \pmod{12}$ but $13 \not\equiv 1 \pmod{24}$, $-4 \equiv 3 \pmod 7$.

The solutions of $x \equiv 3 \pmod 7$ are $\{\ldots, -11, -4, 3, 10, 17, 24, \ldots\} = \{3 + 7k \mid k \in \Z\}$.

$\equiv \pmod m$ is an equivalence relation ([[relations-properties]]), and its equivalence classes are the $m$ possible remainders $0, 1, \ldots, m-1$. For example, modulo 5:
$\{0, 5, 10, -5, \ldots\}$, $\{1, 6, 11, -4, \ldots\}$, $\{2, 7, 12, -3, \ldots\}$, $\{3, 8, -2, \ldots\}$, $\{4, 9, -1, \ldots\}$.
