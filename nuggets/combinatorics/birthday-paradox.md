---
title: The birthday paradox
kind: example
groups: [topics/probability, topics/combinatorics]
requires: [probability, ex-dice]
---
In a room with $n$ people, what is the probability that two of them have the same birthday? (Ignore leap years: 365 days, all equally likely.)

Count *bad* outcomes (all birthdays different):
$$ T = 365^n, \qquad B = 365 \cdot 364 \cdots (365 - n + 1) = \frac{365!}{(365 - n)!}, \qquad P = \frac{T - B}{T} . $$

The surprise: already for $n = 23$, $P > 50\%$; for $n = 41$ it is about $90\%$; for $n = 57$, $99\%$. Our intuition compares *one* person with the others, but there are $\binom n2$ *pairs* that could share a birthday — for $n = 23$, already 253 pairs.

(A fun experiment in a lecture: everybody posts their birthday in the chat, but checks first whether it is already there.)

`birthday n` in [Combinatorics.hs](assets/Combinatorics.hs) computes the percentage.

This is also why hash functions with $N$ possible values start colliding after about $\sqrt N$ items.
