---
title: "Counting necklaces, and Fermat's little theorem again"
kind: example
groups: [topics/combinatorics, topics/number-theory]
requires: [permutations-and-combinations, divisibility]
see-also: [fermats-little-theorem, ex-fermat-induction]
---
How many different necklaces can you make with $p$ beads (in a circle), each bead one of $a$ colours, where $p$ is **prime**? Necklaces that are **rotations** of each other count as the same.

**Strings first.** A string of $p$ beads in a row: $a \cdot a \cdots a = a^p$ possibilities.

**Gluing into a circle.** Each necklace corresponds to a group of strings that are rotations of each other. For example, with $p = 5$ and colours R, B: {RRBBB, BRRBB, BBRRB, BBBRR, RBBBR} is one necklace. How big are these groups?

- The $a$ **single-coloured** strings (BBBBB, RRRRR) form groups of size 1.
- All other strings form groups of size exactly $p$: the $p$ rotations of a string are all different. (If a string is equal to its rotation by $s$ places, $0 < s < p$, it is also equal to its rotation by any multiple of $s$ modulo $p$; since $p$ is prime, $\gcd(s, p) = 1$, and the multiples of $s$ reach every shift, including 1 — so all beads would have the same colour.)

So the $a^p - a$ multi-coloured strings form groups of $p$, giving
$$ \frac{a^p - a}{p} + a \text{ necklaces}. $$

**Bonus:** since the number of necklaces is an integer, $p$ divides $a^p - a$. That is: $a^p \equiv a \pmod p$, which is [[fermats-little-theorem]]!
