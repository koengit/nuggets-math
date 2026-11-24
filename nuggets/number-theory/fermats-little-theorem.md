---
title: Fermat's little theorem
kind: theorem
groups: [topics/number-theory]
requires: [multiplicative-inverse, injective-surjective]
see-also: [ex-fermat-induction, necklaces-fermat]
next: [rsa, chinese-hypothesis]
---
**Theorem (Fermat's little theorem).** If $p$ is prime and $p \nmid a$, then
$$ a^{p-1} \equiv 1 \pmod p . $$
Equivalently: for **all** integers $a$, $a^p \equiv a \pmod p$.

(The two forms are equivalent: multiply the first by $a$; conversely, if $p \nmid a$ we may cancel one $a$ from the second, since $\gcd(a, p) = 1$. If $p \mid a$, both sides of the second form are $\equiv 0$.)

**Proof.** Let $p \nmid a$, so $\gcd(a, p) = 1$. Look at the remainders modulo $p$ of
$$ 1 \cdot a,\; 2 \cdot a,\; 3 \cdot a,\; \ldots,\; (p-1) \cdot a . $$

- None of them is $\equiv 0$: $p \nmid i a$ for $1 \le i \le p-1$ (by [[euclids-lemma]]).
- They are all **different**: if $i a \equiv j a \pmod p$, then (cancelling $a$, [[multiplicative-inverse]]) $i \equiv j \pmod p$, and since $1 \le i, j \le p - 1$, $i = j$.

So "multiply by $a$" is an injective function from $\{1, \ldots, p-1\}$ to itself (modulo $p$); since the set is finite, it is a bijection: the numbers $1a, 2a, \ldots, (p-1)a$ are, modulo $p$, exactly $1, 2, \ldots, p-1$ in some order. Multiplying all of them:
$$ (1 a)(2 a) \cdots ((p-1) a) \equiv 1 \cdot 2 \cdots (p-1) \pmod p, $$
$$ a^{p-1} \cdot (p-1)! \equiv (p-1)! \pmod p . $$
Each factor $1, \ldots, p-1$ is coprime to $p$, so we may cancel them one by one:
$$ a^{p-1} \equiv 1 \pmod p . \qquad \square $$

There are many other proofs, e.g. by induction on $a$ ([[ex-fermat-induction]]) or by counting necklaces ([[necklaces-fermat]]).

(Not to be confused with Fermat's *last* theorem, about $x^n + y^n = z^n$; see [[diophantine-equations]].)
