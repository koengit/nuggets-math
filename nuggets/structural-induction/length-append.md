---
title: "Lemma: length (xs ++ ys) = length xs + length ys"
kind: theorem
groups: [topics/structural-induction]
requires: [structural-induction]
next: [ex-length-rev]
---
```haskell
length []     = 0
length (x:xs) = 1 + length xs
```

**To prove:** `length (xs ++ ys) = length xs + length ys`, for all lists `xs`, `ys`.

**Proof:** by structural induction on `xs`. Let `P(xs) = "∀ys. length (xs ++ ys) = length xs + length ys"`.

**Base case:** `P([])`:
```
   length ([] ++ ys)
=  length ys                    -- def ++
=  0 + length ys                -- arithmetic
=  length [] + length ys        -- def length
```

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `∀zs. length (as ++ zs) = length as + length zs` (I.H.)
- *show:* `∀ys. length ((a:as) ++ ys) = length (a:as) + length ys`

```
   length ((a:as) ++ ys)
=  length (a : (as ++ ys))      -- def ++
=  1 + length (as ++ ys)        -- def length
=  1 + length as + length ys    -- I.H.
=  length (a:as) + length ys    -- def length
```
$\square$

**Which variable?** If you try to do the induction over `ys` instead, you get stuck: `++` is defined by recursion on its *first* argument, so that is the one to do induction on. Try it!
