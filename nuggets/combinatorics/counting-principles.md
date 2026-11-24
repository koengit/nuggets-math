---
title: "Counting: addition, multiplication, subtraction and division principles"
kind: method
groups: [topics/combinatorics]
requires: [counting-sets]
next: [permutations-and-combinations, combinatorial-proof-sum]
---
**Combinatorics** is the art of *counting* possibilities. You can count by going through every possibility (a computer can do that, for small numbers), or with mathematics, giving a formula that works for very large numbers too. Counting is also the basis of (discrete) **probability**.

A restaurant has 20 different pizzas and 3 other dishes, 23 lunches in all, and 10 kinds of ice cream.

- **Addition principle.** If you choose *either* from one set *or* from another (exclusive or, no overlap), add: a pizza or another dish: $20 + 3 = 23$ choices.
- **Multiplication principle.** If you make two *independent* choices *at the same time*, multiply: lunch and ice cream: $23 \cdot 10 = 230$ combinations.
- **Subtraction principle.** Count what you do *not* want and subtract it. Say 2 lunches and 2 ice creams contain mango, and you don't want mango twice: $230 - 2 \cdot 2 = 226$.
- **Division principle.** If every possibility you want is counted several times, the same number of times each, divide. Two *different* pizzas: $20 \cdot 19$ ordered pairs, but (salami, veg) and (veg, salami) are the same order: $\frac{20 \cdot 19}{2} = 190$.

Most counting problems are solved by combining these four principles.
