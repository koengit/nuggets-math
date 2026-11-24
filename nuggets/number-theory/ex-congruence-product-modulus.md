---
title: "Exercise: a ≡ b (mod mn) implies a ≡ b (mod m)"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [modular-arithmetic]
---
Show that if $a \equiv b \pmod{mn}$, then also $a \equiv b \pmod n$ and $a \equiv b \pmod m$.

## Answer

$a \equiv b \pmod{mn}$ means $a = b + k \cdot m \cdot n$ for some $k$. Then $a = b + (km) \cdot n$, so $a \equiv b \pmod n$; and $a = b + (kn) \cdot m$, so $a \equiv b \pmod m$. $\square$

(The converse needs $\gcd(m, n) = 1$: see the shortcut in [[chinese-remainder-theorem]].)
