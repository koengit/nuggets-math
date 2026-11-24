---
title: "Exercise: flipping coins in pairs"
kind: exercise
groups: [topics/invariants, exercises/week-2]
requires: [invariants]
---
Ten coins lie in a row. The first 5 show heads, the last 5 tails. A move: take two **adjacent** coins and flip them both. You may do as many moves as you like. Can you get all coins to show heads?

## Answer

**No.** Invariant: *the number of coins showing tails is odd.*

- Initially, 5 coins show tails: odd.
- A move flips two coins. The number of tails changes by $-2$ (both were tails), $+2$ (both were heads) or $0$ (one of each). So if it was odd, it stays odd.

So the number of tails is always odd, and can never be 0. (Notice that adjacency plays no role at all.)
