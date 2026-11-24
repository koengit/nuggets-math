---
title: RSA public-key cryptography
kind: theorem
groups: [topics/number-theory]
requires: [fermats-little-theorem, multiplicative-inverse, chinese-remainder-theorem]
---
**The problem.** You want to send a message $m$ to a friend, but a villain listens in. With a **shared key** $k$ (like DES, AES), you send $\mathrm{enc}(m, k)$ and your friend computes $\mathrm{dec}(\mathrm{enc}(m,k), k) = m$. But how do you agree on the key without the villain hearing it? And you need a new key for every pair of people.

**Public-key cryptography:** your friend announces a **public** key $k$ to the whole world, and keeps a **secret** key $k'$. Anyone can encrypt, $\mathrm{enc}(m, k)$, but only your friend can decrypt: $\mathrm{dec}(\mathrm{enc}(m, k), k') = m$. This needs a *one-way function*: easy to compute, but very hard (it takes a computer a very long time) to invert without the secret. RSA (Rivest, Shamir, Adleman, 1977) builds one from modular arithmetic; it is used e.g. in `https`.

**Recipe for RSA.** Messages are numbers $m \in \N$.

*Preparation (by the receiver):*
1. Choose two different primes $p, q$ (hundreds of digits long). **Secret.**
2. Compute $N = p \cdot q$. **Public.**
3. Compute $M = (p - 1)(q - 1)$. **Secret.**
4. Choose $e$ with $\gcd(e, M) = 1$ (often $e = 2^{16} + 1 = 65537$), and compute $d$ with $e \cdot d \equiv 1 \pmod M$ (the [[multiplicative-inverse]] of $e$, via the Pulverizer). $e$ is **public**, $d$ is **secret**.

*Sending:* to send $m$ (with $0 \le m < N$), compute $m' \equiv m^e \pmod N$ and send $m'$.

*Receiving:* compute $m'^d \bmod N$. This is the message $m$!

**Why is it secret?** To find $d$ you need $M$, so $p$ and $q$. Computing $N$ from $p, q$ is easy; finding $p, q$ from $N$ (factoring) is, as far as anyone knows, extremely hard for ordinary computers. (Quantum computers could do it fast — if big enough ones are ever built.) See the RSA Factoring Challenge.

**Theorem (correctness).** $(m^e)^d \equiv m \pmod N$.

*Proof.* Since $ed \equiv 1 \pmod M$, $ed = kM + 1$ for some $k \ge 0$. So
$$ (m^e)^d = m^{ed} = m^{k(p-1)(q-1) + 1} = \big(m^{k(q-1)}\big)^{p-1} \cdot m . $$
**Modulo $p$:** if $p \nmid m$, then by [[fermats-little-theorem]] $\big(m^{k(q-1)}\big)^{p-1} \equiv 1$, so the whole thing is $\equiv m \pmod p$. If $p \mid m$, both $m^{ed}$ and $m$ are $\equiv 0 \pmod p$. Either way, $m^{ed} \equiv m \pmod p$.
**Modulo $q$:** in the same way (writing $m^{ed} = (m^{k(p-1)})^{q-1} \cdot m$), $m^{ed} \equiv m \pmod q$.
**Modulo $N$:** $p \mid m^{ed} - m$ and $q \mid m^{ed} - m$, and $p \ne q$ are primes, so $pq = N \mid m^{ed} - m$ (the shortcut in [[chinese-remainder-theorem]]). $\square$

The course's [Haskell code](assets/Arithmetic.hs) implements RSA.
