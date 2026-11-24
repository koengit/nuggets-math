---
title: "Example: the derivative of xⁿ, by induction"
kind: example
groups: [topics/induction]
requires: [simple-induction]
next: [ex-nth-derivative]
---
**To prove:** $\frac{d}{dx} x^n = n \cdot x^{n-1}$, for all $n \ge 1$.

We only use the **product rule**: $\frac{d}{dx}\big(f(x) g(x)\big) = f'(x) g(x) + f(x) g'(x)$.

**Proof** by simple induction over $n$. Let $P(n)$ = "$\frac{d}{dx} x^n = n x^{n-1}$".

*Base case:* $P(1)$: $\frac{d}{dx} x^1 = 1 = 1 \cdot x^0$. OK.

*Step case:* $P(k) \Rightarrow P(k+1)$, for $k \ge 1$. Assume (I.H.) $\frac{d}{dx} x^k = k x^{k-1}$. Show $\frac{d}{dx} x^{k+1} = (k+1) x^k$:
$$
\frac{d}{dx} x^{k+1} = \frac{d}{dx}(x \cdot x^k) = 1 \cdot x^k + x \cdot \frac{d}{dx} x^k \overset{\text{I.H.}}{=} x^k + x \cdot k x^{k-1} = x^k + k x^k = (k+1) x^k .
$$
(The second step is the product rule.) $\square$
