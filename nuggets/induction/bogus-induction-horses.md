---
title: "A bogus proof: all horses have the same colour"
kind: example
groups: [topics/induction]
requires: [simple-induction]
see-also: [ex-boring-country]
---
> **"Theorem":** all horses have the same colour.
>
> We "prove": for all $n \in \N$, every set of $n$ horses is single-coloured.
>
> **"Proof"** by simple induction over $n$. Let $P(n)$ = "every set of $n$ horses is single-coloured".
>
> *Base cases:* $P(0)$: there are no horses, so they all have the same colour. $P(1)$: one horse, so single-coloured.
>
> *Step case:* $P(k) \Rightarrow P(k+1)$, for $k \ge 1$. Take a set of $k+1$ horses. Leave out one horse: the remaining $k$ horses have the same colour (I.H.). Leave out another horse: again $k$ horses with the same colour (I.H.). The two groups overlap, so all $k+1$ horses have the same colour. $\square$

What is wrong?

## Answer

The step case is **not valid for $k = 1$**. With $k + 1 = 2$ horses, leaving out one horse leaves the first one, and leaving out the other leaves the second one: the two groups of size 1 **do not overlap**, so we cannot conclude anything. The picture of two overlapping groups is misleading — pictures can fool you!

So we have $P(0)$, $P(1)$, and $P(k) \Rightarrow P(k+1)$ for $k \ge 2$, but the chain breaks between $P(1)$ and $P(2)$:
$$ P(0) \Rightarrow P(1) \not\Rightarrow P(2) \Rightarrow P(3) \Rightarrow \cdots $$
and $P(2), P(3), \ldots$ are all false. **Always check that the step case works for the smallest $k$ it must cover.**
