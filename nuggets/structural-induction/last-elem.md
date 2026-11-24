---
title: "Example: last xs is an element of xs"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction]
---
```haskell
last [x]    = x
last (x:xs) = last xs           -- only reached when xs is non-empty

x `elem` []     = False
x `elem` (y:ys) = x == y || (x `elem` ys)
```

**To prove:** ``last xs `elem` xs``, for all **non-empty** lists `xs`.

Since we only care about non-empty lists, the base case is a list of length 1, and in the step case we may assume that the tail is non-empty.

**Proof:** by structural induction on `xs`. Let ``P(xs) = "last xs `elem` xs"``.

**Base case:** `P([a])`:
```
   last [a] `elem` [a]
=  a `elem` [a]                       -- def last
=  a == a || a `elem` []              -- def elem
=  True || ...                        -- a == a
=  True
```

**Step case:** `P(as) ⟹ P(a:as)`, where `as` is non-empty.

- *assume:* ``last as `elem` as`` (I.H.)
- *show:* ``last (a:as) `elem` (a:as)``

```
   last (a:as) `elem` (a:as)
=  last as `elem` (a:as)              -- def last (as is non-empty)
=  last as == a || last as `elem` as  -- def elem
=  ... || True                        -- I.H.
=  True
```
$\square$
