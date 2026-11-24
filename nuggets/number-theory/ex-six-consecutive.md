---
title: "Exercise: six consecutive numbers cannot be split into two equal products"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [euclids-lemma]
---
Given a natural number $n$, consider the six consecutive numbers $n, n+1, n+2, n+3, n+4, n+5$. Show that they can **never** be divided into two groups such that the product of one group equals the product of the other.

*Hint:* show that one of the six numbers has a prime factor that none of the others has.
(a) Why does that make it impossible? (b) How do you show it?

## Answer

(a) Suppose the prime $r$ divides exactly one of the six numbers, $x$. The group containing $x$ has a product divisible by $r$. The other group's product is a product of numbers not divisible by $r$, so by [[euclids-lemma]] (repeatedly) it is not divisible by $r$. So the products differ.

(b) First the small cases. If $n = 0$, one group contains 0 and has product 0, while the other has a positive product. If $n = 1$, the total product is $720 = 2^4 \cdot 3^2 \cdot 5$; equal products would make $720$ a perfect square, which it is not (the exponent of 5 is odd).

Now let $n \ge 2$. A prime $r \ge 7$ can divide at most one of six consecutive numbers (two multiples of $r$ differ by at least $r > 5$). So it is enough to find one of the six numbers with a prime factor $\ge 7$.

Among six consecutive numbers, exactly three are **odd**, say $k, k+2, k+4$. These have remainders $k, k+2, k+1$ modulo 3, so exactly one of them is divisible by 3. At most one of them is divisible by 5 (two odd multiples of 5 differ by at least 10). So at least one of the three odd numbers is divisible by none of $2, 3, 5$. That number is $\ge 2$ (since $n \ge 2$), so it has a prime factor, which must be $\ge 7$. By (a), the split is impossible. $\square$
