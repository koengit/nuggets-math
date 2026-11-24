---
title: The binomial theorem
kind: theorem
groups: [topics/combinatorics]
requires: [pascals-triangle]
next: [ex-binomial-prime, ex-fermat-induction]
---
$$ (a + b)^n = \sum_{k=0}^{n} \binom{n}{k} a^k b^{n-k} . $$

$(a+b)^1 = a + b$, $(a+b)^2 = a^2 + 2ab + b^2$, $(a+b)^3 = a^3 + 3a^2b + 3ab^2 + b^3$, $(a+b)^4 = a^4 + 4a^3b + 6a^2b^2 + 4ab^3 + b^4$: the coefficients are the rows of [[pascals-triangle]]!

**Why.** $(a + b)^n = (a+b)(a+b)\cdots(a+b)$, $n$ factors. Expanding the product, we pick from each factor either $a$ or $b$, giving $2^n$ terms. A term equals $a^k b^{n-k}$ exactly when we picked $a$ from $k$ of the $n$ factors; there are $\binom nk$ ways to choose which ones. $\square$

Taking $a = b = 1$ gives $\sum_k \binom nk = 2^n$ again.
