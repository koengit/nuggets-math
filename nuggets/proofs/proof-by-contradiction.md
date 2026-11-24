---
title: Proof by contradiction
kind: method
groups: [topics/proofs]
next: [sqrt2-irrational]
---
To prove a statement $P$ by contradiction, we **assume $\neg P$** and derive something that is clearly false (a *contradiction*), for example $0 = 1$, or "$x$ is both even and odd", or something that contradicts one of our assumptions. Since $\neg P$ leads to something false, $\neg P$ must be false, so $P$ holds.

In logic, this is the equivalence $(\neg P \Rightarrow \mathbf{false}) \Leftrightarrow P$ (see [[only-implication-and-false]]).

**When is it a good idea?** Proof by contradiction often helps when you are stuck and do not know how to continue. By assuming the negation of what you want to prove, you suddenly *know* a great deal. Now all you have to do is find something that is "not right".

**Typical structure:**

1. "We prove this by contradiction. Assume that … (the negation)."
2. Reason from the assumption.
3. "This contradicts …"
4. "So our assumption was false, and … holds." $\square$

The classic example is [[sqrt2-irrational]].
