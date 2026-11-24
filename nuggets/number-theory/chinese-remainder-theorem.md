---
title: The Chinese remainder theorem
kind: theorem
groups: [topics/number-theory]
requires: [modular-arithmetic-rules, pulverizer]
see-also: [crt-direct-method]
next: [ex-gcd-computations]
---
From the Chinese mathematical text *Sunzi Suanjing* (3rd–5th century):

> "There are certain things whose number is unknown. If we count them by threes, we have two left over; by fives, we have three left over; and by sevens, two are left over. How many things are there?"

That is: find $x$ with $x \equiv 2 \pmod 3$, $x \equiv 3 \pmod 5$, $x \equiv 2 \pmod 7$.

**Theorem (Chinese remainder theorem).** If $\gcd(m_1, m_2) = 1$, the system
$$ x \equiv a \pmod{m_1}, \qquad x \equiv b \pmod{m_2} $$
has solutions, and they are exactly $x \equiv x_0 \pmod{m_1 m_2}$ for one particular solution $x_0$.

**Finding $x_0$.** Use the [[pulverizer]] to find $u, v$ with $m_1 u + m_2 v = 1$. Then
$$ m_1 u \equiv 0 \pmod{m_1}, \quad m_1 u \equiv 1 \pmod{m_2}, \qquad m_2 v \equiv 1 \pmod{m_1}, \quad m_2 v \equiv 0 \pmod{m_2}. $$
So let
$$ x_0 = b \cdot m_1 u + a \cdot m_2 v . $$
Modulo $m_1$ this is $b \cdot 0 + a \cdot 1 = a$, and modulo $m_2$ it is $b \cdot 1 + a \cdot 0 = b$. ✓

*Why all solutions are $\equiv x_0 \pmod{m_1 m_2}$:* if $x$ is another solution, then $m_1 \mid x - x_0$ and $m_2 \mid x - x_0$, and since $\gcd(m_1, m_2) = 1$, also $m_1 m_2 \mid x - x_0$.

**More congruences:** solve two of them, replace them by the single congruence $x \equiv x_0 \pmod{m_1 m_2}$, and repeat.

**Sunzi's problem.** $x \equiv 2 \pmod 3$, $x \equiv 3 \pmod 5$: $\gcd(3,5) = 1$, $3 \cdot 2 + 5 \cdot (-1) = 1$, so $x_0 = 3 \cdot 3 \cdot 2 + 2 \cdot 5 \cdot (-1) = 18 - 10 = 8$: $x \equiv 8 \pmod{15}$.
Next, $x \equiv 8 \pmod{15}$, $x \equiv 2 \pmod 7$: $15 \cdot 1 + 7 \cdot (-2) = 1$, so $x_0 = 2 \cdot 15 \cdot 1 + 8 \cdot 7 \cdot (-2) = 30 - 112 = -82$: $x \equiv -82 \equiv 23 \pmod{105}$.
So there are $23 + 105k$ things; the smallest answer is **23**.

**Shortcut.** If both remainders are equal, $x \equiv a \pmod{m_1}$ and $x \equiv a \pmod{m_2}$, then $m_1 \mid x - a$ and $m_2 \mid x - a$, so $x \equiv a \pmod{m_1 m_2}$. E.g. $x \equiv 2 \pmod 3$ and $x \equiv 2 \pmod 7$ give $x \equiv 2 \pmod{21}$.

The course's [Haskell code](assets/Arithmetic.hs) solves systems of congruences.
