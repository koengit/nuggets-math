---
title: "Exercise: when is m² − 1 prime?"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [primes, case-splitting]
---
For which integers $m$ is $m^2 - 1$ a prime number?

## Answer

Only for $m = 2$ and $m = -2$ (giving 3).

$m^2 - 1 = (m+1)(m-1)$. If both factors are $\ge 2$, i.e. $m \ge 3$, this is not a prime. If both are $\le -2$, i.e. $m \le -3$, it is the product of two numbers $\ge 2$ (namely $-(m+1)$ and $-(m-1)$), also not a prime. The remaining cases: $m = -2$: 3, prime! $m = -1$: 0, no. $m = 0$: $-1$, no. $m = 1$: 0, no. $m = 2$: 3, prime!
