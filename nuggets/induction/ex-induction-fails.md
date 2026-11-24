---
title: "Exercise: is n³ ≤ n²?"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [simple-induction]
---
Is $n^3 \le n^2$ for all $n \ge 0$? What happens when you try to prove it by induction?

## Answer

**No.** For $n = 2$: $8 \not\le 4$.

If you try induction anyway: the base case $P(0)$ ($0 \le 0$) holds (and so does $P(1)$). But you get stuck in the step case: from $k^3 \le k^2$ you cannot derive $(k+1)^3 \le (k+1)^2$ — and you shouldn't be able to, since it is false for $k = 1$. A failed induction proof is a hint that the statement may be false: try small cases!
