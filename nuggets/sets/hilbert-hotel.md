---
title: "Hilbert's hotel: infinite sets of the same size"
kind: example
groups: [topics/sets-and-functions]
requires: [injective-surjective]
next: [ex-bijection-n-z, ex-rationals-countable, cantor-diagonal]
---
Hilbert's hotel has infinitely many rooms, numbered $0, 1, 2, \ldots$, and every room is occupied. A new guest arrives. Is there room?

**Yes:** ask every guest to move from room $n$ to room $n + 1$. Room 0 is now free. (The function $n \mapsto n + 1$ is injective, so no two guests end up in the same room, but not surjective, so a room becomes free.)

An infinite bus with guests $0, 1, 2, \ldots$ arrives? Move every guest from room $n$ to room $2n$, and put bus passenger $k$ in room $2k + 1$.

**Same size.** We say two sets have the same size when there is a *bijection* between them. A set that fits exactly into Hilbert's hotel — has a bijection with $\N$ — is called **countable** (countably infinite). Surprisingly:

- $\N$ and the even numbers have the same size (bijection $n \mapsto 2n$);
- $\N$ and $\Z$ have the same size ([[ex-bijection-n-z]]);
- even $\Q$ fits in the hotel ([[ex-rationals-countable]]);
- but the functions $\N \to \mathbb{B}$ (infinite bit sequences) do **not** fit, and neither do the reals ([[cantor-diagonal]]).

So there are different sizes of infinity. A nice video: *How An Infinite Hotel Ran Out Of Room* (YouTube).
