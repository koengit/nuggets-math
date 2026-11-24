---
title: The pigeonhole principle
kind: theorem
groups: [topics/combinatorics]
requires: [functions]
next: [ex-pigeonhole, ex-subset-sum-divisible, compression-impossible]
---
**The pigeonhole principle** (Swedish: *lådprincipen*). If you put more than $n$ things into $n$ boxes, at least one box contains at least 2 things. (11 pigeons, 10 holes: some hole has 2 pigeons.)

In terms of functions: if $|A| > |B|$, then no function $f : A \to B$ is injective.

**General form:** if you put $m$ things into $n$ boxes, some box contains at least $\lceil m / n \rceil$ things. (The maximum is at least the average.)

**Socks.** In a dark wardrobe there are blue and red socks. How many socks must you take to be sure of having two of the same colour? **3**: 2 boxes (colours), 3 things (socks).

**Hair.** Gothenburg has about 600,000 inhabitants; a human has at most about 250,000 hairs. Are there two people with the same number of hairs? (Leave out the bald.) **Yes**, at least 2.4 on average per hair count, so actually **at least 3** people share some number of hairs: boxes are the hair counts (250,000), things are the people (600,000), and $\lceil 600{,}000 / 250{,}000 \rceil = 3$.

When using the principle, always say clearly **what the things (pigeons) are and what the boxes (holes) are**.
