---
title: The order of quantifiers matters
kind: example
groups: [topics/logic]
requires: [quantifiers]
---
Compare
$$ \forall x \in \N.\; \exists y \in \N.\; y > x \qquad\text{and}\qquad \exists y \in \N.\; \forall x \in \N.\; y > x . $$

The first says: "for every number there is a bigger one". **True**: given $x$, take $y = x + 1$; then $x + 1 > x$. Note that $y$ may *depend* on $x$.

The second says: "there is one number that is bigger than all numbers". **False**: whatever $y$ you pick, take $x = y + 1$; then $y > y + 1$ is false. (Or simply $x = y$.)

So swapping $\forall$ and $\exists$ can change the meaning completely. In general
$$ \exists y.\, \forall x.\, P(x,y) \;\Rightarrow\; \forall x.\, \exists y.\, P(x,y) $$
holds (one $y$ that works for all $x$ certainly works for each $x$), but not the other way around.

Swapping two quantifiers *of the same kind* is harmless: $\forall x.\,\forall y.\,P \equiv \forall y.\,\forall x.\,P$, and the same for $\exists$.
