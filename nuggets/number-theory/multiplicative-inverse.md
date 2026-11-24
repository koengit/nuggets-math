---
title: Multiplicative inverses modulo m
kind: theorem
groups: [topics/number-theory]
requires: [modular-arithmetic-rules, pulverizer]
next: [fermats-little-theorem, rsa]
---
When can we "divide" in modular arithmetic? From $a \cdot b \equiv a \cdot c \pmod m$, when can we conclude $b \equiv c \pmod m$? Not always: $2 \cdot 3 \equiv 2 \cdot 5 \pmod 4$ but $3 \not\equiv 5 \pmod 4$.

A **multiplicative inverse** of $a$ modulo $m$ is a number $u$ with
$$ a \cdot u \equiv 1 \pmod m . $$

**Theorem.** If $\gcd(a, m) = 1$, then $a$ has a multiplicative inverse modulo $m$.

*Proof.* The [[pulverizer]] gives $u, v$ with $a u + m v = 1$. Then $a u = 1 - m v \equiv 1 \pmod m$. $\square$

**Cancellation.** If $\gcd(a, m) = 1$ and $a b \equiv a c \pmod m$, then $b \equiv c \pmod m$: multiply both sides by the inverse $u$, giving $(ua) b \equiv (ua) c$, i.e. $b \equiv c$.

**Example.** Solve $5 a \equiv 5 b \pmod 7$. Find the inverse of 5 modulo 7: $5u + 7v = 1$ for $u = -4$, $v = 3$. So $5 \cdot (-4) \equiv 1$, and $-4 \equiv 3 \pmod 7$: the inverse is 3 (check: $5 \cdot 3 = 15 \equiv 1$). Multiplying by 3 gives $a \equiv b \pmod 7$.
