---
title: "Exercises: Diophantine equations, CRT, and prime sums"
kind: exercise
groups: [topics/number-theory, assignments/assignment-4]
requires: [diophantine-equations, chinese-remainder-theorem, sum-1-to-n]
---
*(Assignment questions; no answers are published. You may check numeric answers with the [Haskell code](assets/Arithmetic.hs), but write down fully detailed answers and proofs.)*

**1.** Do these Diophantine equations have solutions? If so, give three different ones.
(a) $19x + 22y = 6$  (b) $22x - 55y = 14$

**2.** Consider $x \equiv 1 \pmod 3$, $x \equiv 3 \pmod 5$, $x \equiv 2 \pmod 7$.
(a) Find an integer $x$ satisfying all three, using the Pulverizer and the Chinese remainder theorem; explain step by step.
(b) Which solutions are there with $0 \le x \le 200$?

**3.** For which natural numbers $n$ is $1 + 2 + \dots + n$ a prime number? (For $n = 1$: 1, not prime. $n = 2$: 3, prime. $n = 3$: 6, not prime.) Make a concrete claim and prove it. *Hint:* use the formula for arithmetic sums, and look at how many divisors the result has.

**4.** Find all natural numbers $a, b$ with $2^a + 1 = b^2$. *Hint:* rewrite it so that it talks about multiplication instead of addition.
