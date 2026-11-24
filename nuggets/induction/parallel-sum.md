---
title: "Motivation: summing a million numbers in parallel"
kind: example
groups: [topics/induction]
requires: [operator-properties]
next: [generalized-associativity]
---
A data centre (Google, Amazon, …) has thousands of computers. Question: *how much money did our 1,000,000 users spend this month?* We want the sum of a million numbers, as fast as possible.

**Sequentially**, one computer needs 999,999 additions, one after the other.

**In parallel:** split the numbers into two halves of 500,000, sum each half on a different machine (recursively, in the same way), and add the two results. That gives a tree:
$$ 1{,}000{,}000 \to 2 \times 500{,}000 \to 4 \times 250{,}000 \to \cdots \to 1{,}000{,}000 \times 1 $$
The number of levels is the number of times you can halve $n$ until you get 1: $\log_2 n$. For a million that is only about **20 steps**!

(Small version: 60 people want the sum of their ages. Sequentially, 60 steps. In 4 groups of 15, done in parallel, and then combined: about 15 + 4 steps.)

**But is it correct?** We computed $(a_1 + \dots + a_{500000}) + (a_{500001} + \dots + a_{1000000})$, with all kinds of brackets inside, instead of $(((a_1 + a_2) + a_3) + \dots)$. That gives the same answer because $+$ is **associative**. For an operator $\oplus$ that is associative, the result does not depend on the bracketing: that needs a proof by induction, [[generalized-associativity]]. (Commutativity is not needed, as long as we keep the elements in order.)

Which operators can we parallelize this way? $+$, $\cdot$, $\max$, `++` (on lists) — yes. Subtraction, division, average — no (see [[operator-properties]]).
