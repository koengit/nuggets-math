---
title: "Alternative method: the Chinese remainder theorem via a Diophantine equation"
kind: method
groups: [topics/number-theory]
requires: [chinese-remainder-theorem, diophantine-equations]
---
Here is another, more direct way to solve
$$ x \equiv a \pmod{m_1}, \qquad x \equiv b \pmod{m_2}, \qquad \gcd(m_1, m_2) = 1 . $$

By the definition of $\equiv$, the difference between the two sides must be a multiple of the modulus:
$$ x = a + k_1 m_1, \qquad x = b + k_2 m_2 . $$
If we find $k_1$ and $k_2$, we can compute $x$. Eliminating $x$ (both right-hand sides must be equal):
$$ a + k_1 m_1 = b + k_2 m_2 \quad\Longleftrightarrow\quad k_1 m_1 - k_2 m_2 = b - a . $$
This is just a [[diophantine-equations|Diophantine equation]] in $k_1, k_2$! Find $u, v$ with $u m_1 + v m_2 = 1$ (Pulverizer), and multiply by $b - a$; since $k_2$ appears with a minus sign:
$$ k_1 = u (b - a), \qquad k_2 = -v (b - a). $$
(Check that this solves the equation!) Then
$$ x = a + u (b - a) m_1 \qquad\text{or, equivalently,}\qquad x = b - v (b - a) m_2 . $$
Both give the same $x$.

**Recipe.** Find $u, v$ with $u m_1 + v m_2 = 1$; then
$$ x = a + u \cdot (b - a) \cdot m_1 . $$

Example: $x \equiv 2 \pmod 3$, $x \equiv 3 \pmod 5$, with $3 \cdot 2 + 5 \cdot (-1) = 1$: $x = 2 + 2 \cdot 1 \cdot 3 = 8$. ✓ (Same as in [[chinese-remainder-theorem]].)
