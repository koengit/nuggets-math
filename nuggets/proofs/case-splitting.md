---
title: Case splitting
kind: method
groups: [topics/proofs]
requires: [equational-reasoning]
next: [divisibility]
---
In a proof by *case splitting* we divide the situation into cases, and prove the statement separately in each case. The cases must

1. **cover all possibilities** (otherwise we have not proved the statement in general), and
2. preferably **not overlap** (overlap is not wrong, just wasted work).

**To prove:** $n^3 - n$ is divisible by 3, for all integers $n$.

**Proof:** By case split on the remainder of $n$ when dividing by 3. Every integer can be written as $3k$, $3k+1$ or $3k+2$ for some integer $k$.

*Case 1:* $n = 3k$.
$$ n^3 - n = 27k^3 - 3k = 3(9k^3 - k), $$
which is divisible by 3.

*Case 2:* $n = 3k+1$.
$$ n^3 - n = (27k^3 + 27k^2 + 9k + 1) - (3k+1) = 27k^3 + 27k^2 + 6k = 3(9k^3 + 9k^2 + 2k), $$
which is divisible by 3.

*Case 3:* $n = 3k+2$.
$$ n^3 - n = (27k^3 + 54k^2 + 36k + 8) - (3k+2) = 27k^3 + 54k^2 + 33k + 6 = 3(9k^3 + 18k^2 + 11k + 2), $$
which is divisible by 3. $\square$

*Another way to see it:* $n^3 - n = (n-1)\,n\,(n+1)$ is a product of three consecutive integers, and one of any three consecutive integers is divisible by 3.
