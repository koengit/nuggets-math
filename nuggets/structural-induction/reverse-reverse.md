---
title: "Example: reverse is its own inverse"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction]
uses: [reverse-append]
---
**To prove:** `reverse (reverse xs) = xs`, for all lists `xs`.

**Proof:** by structural induction on `xs`. Let `P(xs) = "reverse (reverse xs) = xs"`.

**Base case:** `P([])`:
```
   reverse (reverse [])
=  reverse []                          -- def reverse
=  []                                  -- def reverse
```

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `reverse (reverse as) = as` (I.H.)
- *show:* `reverse (reverse (a:as)) = a:as`

```
   reverse (reverse (a:as))
=  reverse (reverse as ++ [a])         -- def reverse
=  reverse [a] ++ reverse (reverse as) -- reverse/++ lemma
=  [a] ++ reverse (reverse as)         -- def reverse (reverse [a] = [] ++ [a] = [a])
=  [a] ++ as                           -- I.H.
=  a : as                              -- def ++
```
$\square$

Without the lemma [[reverse-append]] we would be stuck at the second line.
