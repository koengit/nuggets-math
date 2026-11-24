---
title: "Exercise: the sizes of A × B, A → B, A ∪ B and A ∩ B"
kind: exercise
groups: [topics/sets-and-functions, topics/combinatorics, exercises/week-1]
requires: [functions]
next: [counting-principles, ex-count-operators]
---
For finite sets $A$ and $B$: how many elements does $A \times B$ have, expressed in $|A|$ and $|B|$? How many elements does $A \to B$ have? What can you say about $|A \cup B|$ and $|A \cap B|$?

## Answer

$$ |A \times B| = |A| \cdot |B| . $$

$$ |A \to B| = |B|^{|A|} . $$
*Why:* the number of functions is the number of function tables. A table has $|A|$ rows, one for each $x \in A$, and in each row there are $|B|$ choices for $f(x)$. So we make $|A|$ independent choices between $|B|$ things: $|B| \cdot |B| \cdots |B| = |B|^{|A|}$.

$|A| \le |A \cup B|$ and $|B| \le |A \cup B|$, and $|A \cup B| \le |A| + |B|$; it need not be equal to $|A| + |B|$, because $A$ and $B$ may have common elements. Precisely: $|A \cup B| = |A| + |B| - |A \cap B|$ (inclusion–exclusion).

$|A \cap B| \le |A|$ and $|A \cap B| \le |B|$.
