---
title: "Exercise: prove Pascal's identity with factorials"
kind: exercise
groups: [topics/combinatorics, exercises/week-7]
requires: [pascals-triangle]
---
Prove $\binom nk + \binom{n}{k+1} = \binom{n+1}{k+1}$ (for $0 \le k < n$) by using the definition of $\binom{n}{k}$ and manipulating the factorials.

## Answer

$$
\begin{aligned}
\binom nk + \binom n{k+1}
&= \frac{n!}{k!\,(n-k)!} + \frac{n!}{(k+1)!\,(n-k-1)!} && \text{[definition]}\\
&= \frac{n!\,(k+1)}{(k+1)!\,(n-k)!} + \frac{n!\,(n-k)}{(k+1)!\,(n-k)!} && \text{[same denominators: } (k+1)\,k! = (k+1)!, \; (n-k)(n-k-1)! = (n-k)!\text{]}\\
&= \frac{n!\,\big((k+1) + (n-k)\big)}{(k+1)!\,(n-k)!} && \text{[add, factor out } n!\text{]}\\
&= \frac{n!\,(n+1)}{(k+1)!\,(n-k)!} \\
&= \frac{(n+1)!}{(k+1)!\,\big((n+1)-(k+1)\big)!} \\
&= \binom{n+1}{k+1} . && \text{[definition]}
\end{aligned}
$$
$\square$
