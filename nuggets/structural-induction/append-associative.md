---
title: "Lemma: ++ is associative"
kind: theorem
groups: [topics/structural-induction]
requires: [structural-induction]
next: [reverse-append]
---
**To prove:** `xs ++ (ys ++ zs) = (xs ++ ys) ++ zs`, for all lists `xs`, `ys`, `zs`.

**Proof:** by structural induction on `xs`. Let `P(xs) = "∀ys,zs. xs ++ (ys ++ zs) = (xs ++ ys) ++ zs"`.

**Base case:** `P([])`:
```
   [] ++ (ys ++ zs)
=  ys ++ zs                   -- def ++
=  ([] ++ ys) ++ zs           -- def ++
```

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `∀vs,ws. as ++ (vs ++ ws) = (as ++ vs) ++ ws` (I.H.)
- *show:* `∀ys,zs. (a:as) ++ (ys ++ zs) = ((a:as) ++ ys) ++ zs`

```
   (a:as) ++ (ys ++ zs)
=  a : (as ++ (ys ++ zs))     -- def ++
=  a : ((as ++ ys) ++ zs)     -- I.H.
=  (a : (as ++ ys)) ++ zs     -- def ++
=  ((a:as) ++ ys) ++ zs       -- def ++
```
$\square$

Induction over `ys` or `zs` gets stuck — try it! (This was also a starred exercise in week 3, where the hint was to do [[simple-induction]] on the *length* of `xs`; structural induction is the more natural way.)
