---
title: "Exercise: prove or disprove quantified statements"
kind: exercise
groups: [topics/logic]
requires: [predicate-logic-formalizing, proving-quantified-statements]
---
For each of the ten statements in [[predicate-logic-formalizing]], decide whether it is true, and prove or disprove it.

## Answer

1. *All numbers are prime.* **False.** A counterexample is a number that is not prime, e.g. 4.
2. *There is an even prime.* **True.** A proof is an example: 2 (which happens to be the only one).
3. *No prime greater than 2 is even.* **True.** This needs a general argument about all primes. By contradiction: suppose $p$ is a prime, $p > 2$, and $p$ is even. Since $p$ is even, $2 \mid p$. Since $p > 2$, $2 \ne p$. So 2 is a divisor of $p$ other than 1 and $p$, so $p$ is not prime — a contradiction.
4. *The sum of any two integers is greater than 0.* **False.** Counterexample: $0 + 0 = 0$.
5. *Every even integer is the sum of two odd integers.* **True.** Take any even integer $x$. Then $1$ is odd, and $x-1$ is odd because $x$ is even, and $1 + (x-1) = x$.
6. *There is a natural number smaller than all others.* **True.** Example: $0$ (the only example).
7. *There is a number that divides all integers.* **True.** Example: $1$ divides every integer.
8. *No number is greater than itself.* **True.** General argument, by contradiction: if $x > x$ then $x \ne x$, which is impossible.
9. *All natural numbers are even or prime.* **False.** Counterexample: 15 is odd and not prime.
10. *Two different primes cannot divide each other.* **True.** This needs a general argument about all pairs of different primes. Take two different primes; call the smaller one $p$ and the larger one $q$. Then $q \nmid p$, because $0 < p < q$. And $p \nmid q$, because the only divisors of the prime $q$ are 1 and $q$, and $p \ne 1$, $p \ne q$.
