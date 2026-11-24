---
title: "Exercise: testing primality up to √n"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [primes, proof-by-contradiction]
---
Let $n > 1$ be a natural number that is not prime. Show that there is a natural number $b$ with $1 < b \le \sqrt n$ and $b \mid n$.

Someone gives you a number $N < 100$, and you must decide whether it is prime by checking divisibility by various numbers. Which divisors do you need to check?

## Answer

Since $n$ is not prime, $n = a \cdot b$ with $a, b > 1$. Suppose (for contradiction) that both $a > \sqrt n$ and $b > \sqrt n$. Then $n = ab > \sqrt n \cdot \sqrt n = n$: impossible. So at least one of them is $\le \sqrt n$.

For $N < 100$ (in fact for all $N < 121 = 11^2$): it is enough to check divisibility by **2, 3, 5 and 7**. If $N > 1$ is not divisible by any of them (and is not one of them), it is prime. (We don't need to check 4, 6, 8, …: a divisor $b$ that is not prime has a prime divisor that is smaller.)

Even quicker: check 2, 3 and 5 (easy to see from the digits), and remember the only numbers below 100 that are divisible by 7 but not by 2, 3 or 5: **49, 77, 91**. (Up to 120, add 119 = 7 · 17.)
