---
title: "The mean teacher's exam (the 100 prisoners problem)"
kind: puzzle
groups: [topics/probability, topics/graphs]
requires: [ex-bijection-graph-cycle, permutations-and-combinations]
---
A mean teacher has 40 students. He puts 40 boxes in a row, each containing the name of one student (every student in exactly one box). One by one, each student enters the room and may open **20** boxes, in any order. The class passes only if **every** student finds their own name. The students may agree on a strategy beforehand, but cannot communicate during the exam.

Opening 20 random boxes, each student succeeds with probability $\frac12$, so everyone succeeds with probability $2^{-40}$: hopeless. Is there a better strategy?

## Answer

**The cycle strategy.** Number the students and the boxes $1..40$. Student $i$ first opens box $i$. If it contains name $j$, they next open box $j$, and so on.

Model the boxes as a bijection graph ([[ex-bijection-graph-cycle]]): box $i$ points to box $j$ if it contains name $j$. Student $i$ follows the cycle that box $i$ lies on, and that cycle leads back to the box containing name $i$. So student $i$ succeeds exactly when their cycle has length $\le 20$. **Everyone succeeds exactly when the graph has no cycle longer than 20.**

*Counting the bad graphs.* A graph with $n$ nodes has at most one cycle of length $k > n/2$. The number of graphs with such a cycle: choose its nodes, $\binom nk$; arrange them in a cycle, $(k-1)!$ ways; arrange the other nodes, $(n-k)!$ ways. That is $\binom nk (k-1)!(n-k)! = \frac{n!}{k}$. So
$$ P(\text{fail}) = \sum_{k = n/2 + 1}^{n} \frac1k \approx \ln 2 \approx 0.69 . $$
**The students pass with probability about 31%** (for $n = 40$: 0.32; for $n = 100$: 0.31), instead of practically 0!

This is the famous 100 prisoners problem (Peter Bro Miltersen). The functions `success`, `bad`, `hasCycle` in [Combinatorics.hs](assets/Combinatorics.hs) compute these numbers.
