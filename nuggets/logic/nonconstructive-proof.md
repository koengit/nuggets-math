---
title: "A non-constructive proof: an irrational to an irrational power can be rational"
kind: example
groups: [topics/logic, topics/proofs]
requires: [case-splitting, sqrt2-irrational]
---
**To prove:** there is an irrational number $r$ such that $r^{\sqrt2}$ is rational, i.e.
$$ \exists r \in \R.\; (r \notin \Q \wedge r^{\sqrt 2} \in \Q). $$

**Proof:** by case split on whether $\sqrt2^{\sqrt2}$ is rational. (We know $\sqrt 2$ is irrational: [[sqrt2-irrational]].)

*Case 1:* $\sqrt2^{\sqrt2} \in \Q$. Take $r = \sqrt 2$. Then $r \notin \Q$ and $r^{\sqrt2} \in \Q$.

*Case 2:* $\sqrt2^{\sqrt2} \notin \Q$. Take $r = \sqrt2^{\sqrt2}$. Then $r \notin \Q$, and
$$ r^{\sqrt2} = \left(\sqrt2^{\sqrt2}\right)^{\sqrt 2} = \sqrt2^{\sqrt2 \cdot \sqrt2} = \sqrt2^{\,2} = 2 \in \Q. $$
$\square$

**Why is this interesting?** We proved that such an $r$ *exists*, but we did not find out *which* one it is! A proof of $\exists x.\,P(x)$ usually gives an example, but it does not have to. (In fact $\sqrt2^{\sqrt2}$ is irrational — even transcendental, by the Gelfond–Schneider theorem — so case 2 is the true one; but that is much harder to prove.)
