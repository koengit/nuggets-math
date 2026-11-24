---
title: How to write an induction proof
kind: method
groups: [topics/induction]
requires: [simple-induction]
next: [strong-induction]
---
Many textbook induction proofs take steps that are too large for someone who has never seen one. Here is the way induction proofs should be written in this course (for example on an exam).

1. **Always say that you use induction, which kind** (simple, strong, structural), **and over which variable.**
2. **Write down $P(n)$** explicitly.
3. Induction proofs work like **proofs by case distinction** ([[case-splitting]]): clearly state the cases (base case(s), step case) and what you know in each case. The only difference is that in the step case you know something extra: **write down the induction hypothesis explicitly**, and write down what you have to show.
4. In the calculations, say **why** each step holds, and mark where you use the I.H.

**Example.**

**To prove:** $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, for $n \ge 1$.

**Proof:** by simple induction over $n$. Let $P(n)$ = "$1 + 2 + \dots + n = \frac{n(n+1)}{2}$".

**Base case:** $P(1)$: $1 = \frac{1 \cdot (1+1)}{2}$. OK!

**Step case:** $P(k) \Rightarrow P(k+1)$, for $k \ge 1$.

- *Assume* (I.H.): $1 + 2 + \dots + k = \frac{k(k+1)}{2}$.
- *Show:* $1 + 2 + \dots + k + (k+1) = \frac{(k+1)(k+2)}{2}$.

$$
\begin{aligned}
& 1 + 2 + \dots + k + (k+1) \\
=\; & \tfrac{k(k+1)}{2} + (k+1) && \text{[I.H.]} \\
=\; & \tfrac{k(k+1)}{2} + \tfrac{2(k+1)}{2} \\
=\; & \tfrac{(k+1)(k+2)}{2}
\end{aligned}
$$
which is what we had to prove. $\square$

More examples in the same style: [[ex-induction-divisible]], [[ex-sum-products]], [[ex-induction-inequality]], [[ex-nth-derivative]].
