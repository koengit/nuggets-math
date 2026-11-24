---
title: "Pascal's triangle and Pascal's identity"
kind: theorem
groups: [topics/combinatorics]
requires: [permutations-and-combinations]
next: [binomial-theorem, ex-pascal-identity-algebra]
---
Imagine a ball dropping through a triangle of pins (Blaise Pascal, 1600s). At each pin it goes left (L) or right (R). Write at each pin the number of ways to reach it:
```
              1                 n = 0
            1   1               n = 1
          1   2   1             n = 2
        1   3   3   1           n = 3
      1   4   6   4   1         n = 4
```
To reach pin $k$ on row $n$ (counting from 0), the ball makes $n$ choices, exactly $k$ of which are R. So the number of ways is $\binom{n}{k}$: choose which $k$ of the $n$ steps go right. For example, the paths LLRR, LRLR, RLLR, RRLL, RLRL, LRRL reach pin 2 of row 4: $\binom42 = 6$.

**Pascal's identity.** Every pin can be reached from the two pins above it, so
$$ \binom{n+1}{k+1} = \binom{n}{k} + \binom{n}{k+1} . $$
(For an algebraic proof, see [[ex-pascal-identity-algebra]].)

**Row sums.** All paths to row $n$ make $n$ choices between L and R: $2^n$ paths. Every path ends at some pin, so
$$ \sum_{k=0}^n \binom nk = 2^n . $$

The function `pascal` in [Combinatorics.hs](assets/Combinatorics.hs) computes the rows by adding neighbours, and checks them against `over`.
