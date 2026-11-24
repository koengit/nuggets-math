---
title: Geometric sums
kind: theorem
groups: [topics/induction, topics/sums]
requires: [simple-induction]
see-also: [arithmetic-sum]
---
A **geometric sum** multiplies by a fixed factor each time, like $5 + 10 + 20 + 40 + 80$:
$$ A + AB + AB^2 + \dots + AB^n = \sum_{i=0}^n A B^i = A \sum_{i=0}^n B^i . $$

**Theorem.** For $B \ne 1$:
$$ \sum_{i=0}^n B^i = \frac{B^{n+1} - 1}{B - 1}. $$
For $B = 2$: $2^0 + 2^1 + \dots + 2^n = 2^{n+1} - 1$ (check: $1, 3, 7, 15, 31, \ldots$).

**Finding the formula (telescoping).** Let $S = B^0 + B^1 + \dots + B^n$. Then $B \cdot S = B^1 + B^2 + \dots + B^{n+1}$. Subtracting, almost everything cancels:
$$ B\cdot S - S = B^{n+1} - B^0, \quad\text{so}\quad S(B-1) = B^{n+1} - 1, \quad\text{so}\quad S = \frac{B^{n+1}-1}{B-1}. $$

**Proving it by induction** over $n$. Let $P(n)$ = "$\sum_{i=0}^n B^i = \frac{B^{n+1}-1}{B-1}$".

*Base case:* $P(0)$: $B^0 = 1 = \frac{B - 1}{B - 1}$. OK.

*Step case:* assume (I.H.) $\sum_{i=0}^k B^i = \frac{B^{k+1}-1}{B-1}$. Then
$$
\begin{aligned}
\sum_{i=0}^{k+1} B^i &= \Big(\sum_{i=0}^k B^i\Big) + B^{k+1} \\
&= \frac{B^{k+1}-1}{B-1} + \frac{(B-1)B^{k+1}}{B-1} && \text{[I.H.]}\\
&= \frac{B^{k+1} - 1 + B^{k+2} - B^{k+1}}{B-1} \\
&= \frac{B^{k+2}-1}{B-1}.
\end{aligned}
$$
$\square$
