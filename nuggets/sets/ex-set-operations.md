---
title: "Exercise: which set operations are associative or commutative?"
kind: exercise
groups: [topics/sets-and-functions, exercises/week-1]
requires: [sets, operator-properties]
---
Which of the set operations union, intersection and difference are associative, and which are commutative?

## Answer

**Union and intersection** are both commutative and associative (they correspond to $\vee$ and $\wedge$).

**Difference** is **not commutative**: $\{1, 2\} \setminus \{1\} = \{2\}$, but $\{1\} \setminus \{1, 2\} = \emptyset$.

**Difference** is **not associative**: $(\{1,2,3\} \setminus \{1,2\}) \setminus \{2\} = \{3\}$, but $\{1,2,3\} \setminus (\{1, 2\} \setminus \{2\}) = \{1,2,3\} \setminus \{1\} = \{2, 3\}$.
