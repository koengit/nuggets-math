---
title: "Exercise: computing gcds, Bézout coefficients and a CRT solution"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [pulverizer, chinese-remainder-theorem]
---
(a) Compute $\gcd(31, 17)$, $\gcd(52, 56)$ and $\gcd(15, 21)$ using Euclid's method.

(b) Compute $x$ and $y$ such that $31x + 17y = \gcd(31,17)$, $52x + 56y = \gcd(52,56)$, and $15x + 21y = \gcd(15,21)$.

(c) Find an $x$ such that $x \equiv 3 \pmod 5$, $x \equiv 4 \pmod 7$ and $x \equiv 5 \pmod{11}$.

## Answer

(a) $\gcd(31,17) = 1$, $\gcd(52, 56) = 4$, $\gcd(15, 21) = 3$.

(b) For example: $31 \cdot (-6) + 17 \cdot 11 = -186 + 187 = 1$; $52 \cdot 1 + 56 \cdot (-1) = -4$, so $52 \cdot (-1) + 56 \cdot 1 = 4$; $15 \cdot 3 + 21 \cdot (-2) = 45 - 42 = 3$. (Check yours with the [Haskell code](assets/Arithmetic.hs): there are many correct answers.)

(c) First solve $x \equiv 3 \pmod 5$, $x \equiv 4 \pmod 7$. $\gcd(5,7) = 1$, and $5u + 7v = 1$ for $u = 3$, $v = -2$. A solution is
$$ x = 4 \cdot 5 \cdot 3 + 3 \cdot 7 \cdot (-2) = 60 - 42 = 18, $$
so $x \equiv 18 \pmod{35}$.

Then solve $x \equiv 18 \pmod{35}$, $x \equiv 5 \pmod{11}$. $\gcd(35, 11) = 1$, and $35u + 11v = 1$ for $u = -5$, $v = 16$ (Pulverizer). A solution is
$$ x = 5 \cdot 35 \cdot (-5) + 18 \cdot 11 \cdot 16 = -875 + 3168 = 2293 . $$
Perfectly fine, but the smallest positive solution is $2293 - 5 \cdot 385 = 368$. All solutions: $x \equiv 368 \pmod{385}$. Check: $368 = 73 \cdot 5 + 3 = 52 \cdot 7 + 4 = 33 \cdot 11 + 5$. ✓
