---
title: "Exercise: Anna's flowers or Bertil's socks?"
kind: exercise
groups: [topics/combinatorics, exams/old-exams]
requires: [permutations-and-combinations]
---
Anna chooses 4 flowers from a garden with 10 (different) flowers. Bertil chooses 3 socks from a drawer with 11 (different) socks. Who has the most ways to make their choice? You don't need to compute the actual numbers, only compare them.

## Answer

Anna has $\binom{10}{4} = \frac{10!}{6!\,4!}$ ways, Bertil $\binom{11}{3} = \frac{11!}{8!\,3!}$. Compare by dividing:
$$ \frac{\binom{10}4}{\binom{11}3} = \frac{10!}{6!\,4!} \cdot \frac{8!\,3!}{11!} = \frac{8 \cdot 7}{11 \cdot 4} = \frac{56}{44} = \frac{14}{11} > 1 . $$
So **Anna** has more ways. (Indeed $\binom{10}4 = 210$ and $\binom{11}3 = 165$.)
