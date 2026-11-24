---
title: Calculating with congruences
kind: theorem
groups: [topics/number-theory]
requires: [modular-arithmetic]
next: [multiplicative-inverse, fermats-little-theorem]
---
**If $a \equiv b \pmod m$, then for all $c$:**
$$ a + c \equiv b + c \pmod m \qquad\qquad a \cdot c \equiv b \cdot c \pmod m \qquad\qquad a^n \equiv b^n \pmod m $$

*Proofs.* We know $m \mid a - b$. Then $(a + c) - (b + c) = a - b$ is a multiple of $m$. And $ac - bc = (a - b)c$ is a multiple of $m$. Powers follow by repeated multiplication (induction on $n$). $\square$

So within a computation modulo $m$ you may replace any number by a congruent one, e.g. $50 + 7 \equiv 2 + 7 \pmod{12}$.

**But not everything works.** From $a \equiv b \pmod m$ it does **not** follow that

- $c^a \equiv c^b \pmod m$: $1 \equiv 4 \pmod 3$, but $2^1 = 2 \not\equiv 16 = 2^4 \pmod 3$. (Exponents do *not* work modulo $m$.)
- $a / c \equiv b / c$: $2 \cdot 3 \equiv 2 \cdot 5 \pmod 4$ (both $\equiv 2$), but $3 \not\equiv 5 \pmod 4$. You may only cancel a factor $c$ with $\gcd(c, m) = 1$: see [[multiplicative-inverse]].

**Example: big powers.** What is $2^{503} \bmod 5$? Note $2^4 = 16 \equiv 1 \pmod 5$. So
$$ 2^{503} = 2^{4 \cdot 125 + 3} = (2^4)^{125} \cdot 2^3 \equiv 1^{125} \cdot 8 \equiv 3 \pmod 5 . $$
Is there always such an $n$ with $a^n \equiv 1 \pmod m$? Yes, if $\gcd(a, m) = 1$ (for primes $m$, see [[fermats-little-theorem]]).
