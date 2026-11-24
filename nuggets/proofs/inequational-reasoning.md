---
title: Inequational reasoning
kind: method
groups: [topics/proofs]
requires: [equational-reasoning]
uses: [geometric-sum]
---
Inequational reasoning is like [[equational-reasoning]], except that some steps use $\le$, $<$, $\ge$ or $>$ instead of $=$.

**To prove:** $1^1 + 2^2 + 3^3 + \dots + n^n \ge 2^{n+1} - 3$, for $n \ge 1$.

**Proof:**

$$
\begin{aligned}
& 1^1 + 2^2 + 3^3 + \dots + n^n \\
\ge\; & 1^1 + 2^2 + 2^3 + \dots + 2^n && \text{[}k^k \ge 2^k \text{ for } k \ge 2\text{]} \\
=\; & 1 + (2^{n+1} - 1 - 2^0 - 2^1) && \text{[geometric sum]} \\
=\; & 2^{n+1} - 3
\end{aligned}
$$
$\square$

**What does a chain of (in)equalities prove?**

- If all steps are $=$ or $\ge$, the first expression is $\ge$ the last.
- If all steps are $=$ or $\le$, the first expression is $\le$ the last.
- If all steps are $=$ or $\ge$, and at least one is $>$, the first is $>$ the last.
- If all steps are $=$ or $\le$, and at least one is $<$, the first is $<$ the last.

Never mix the two directions ($\le$ with $\ge$, or $<$ with $>$) in one chain: the chain then proves nothing at all.
