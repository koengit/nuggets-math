---
title: Injective, surjective, bijective
kind: definition
groups: [topics/sets-and-functions]
requires: [functions, quantifiers]
next: [ex-injective-not-surjective, ex-finite-injective-surjective, hilbert-hotel]
---
Let $f : A \to B$.

- $f$ is **injective** (one-to-one) if different arguments give different results:
$$ \forall x, y \in A.\; f(x) = f(y) \Rightarrow x = y . $$
- $f$ is **surjective** (onto) if every element of $B$ is reached:
$$ \forall y \in B.\; \exists x \in A.\; f(x) = y . $$
- $f$ is **bijective** if it is both. Then it has an *inverse* $f^{-1} : B \to A$, and $A$ and $B$ "have the same size": the bijection pairs up their elements.

**Examples** on $\N \to \N$: $f(n) = n + 1$ is injective but not surjective (nothing maps to 0). $f(n) = n \operatorname{div} 2$ is surjective but not injective. $f(n) = n$ is bijective. See [[ex-injective-not-surjective]].

**Proving these properties.** Injective: assume $f(x) = f(y)$ and *derive* $x = y$. Not injective: give two different $x, y$ with $f(x) = f(y)$. Surjective: for an arbitrary $y$, *construct* an $x$ with $f(x) = y$. Not surjective: give one $y$ that is not reached, and show why.

For finite sets: if $f$ is injective then $|A| \le |B|$, if surjective then $|A| \ge |B|$. If $|A| = |B|$, injective and surjective are equivalent ([[ex-finite-injective-surjective]]). For infinite sets this fails, which is what makes [[hilbert-hotel]] possible.
