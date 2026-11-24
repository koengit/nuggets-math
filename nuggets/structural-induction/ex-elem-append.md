---
title: "Exercise: elem distributes over ++"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [structural-induction]
next: [ex-elem-rev]
---
```haskell
x `elem` []     = False
x `elem` (y:ys) = x == y || (x `elem` ys)

[]     ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)
```

Prove that, for all `x` and all lists `xs`, `ys`:

```haskell
x `elem` (xs ++ ys) = (x `elem` xs) || (x `elem` ys)
```

*Tip:* type in the code and test the property with QuickCheck first (on `[Int]`).

## Answer

By structural induction on `xs`. Let ``P(xs) = "x `elem` (xs ++ ys) = (x `elem` xs) || (x `elem` ys)"``.

**Base case:** `P([])`:
```
   x `elem` ([] ++ ys)
=  x `elem` ys                         -- def ++
=  False || (x `elem` ys)              -- def ||
=  (x `elem` []) || (x `elem` ys)      -- def elem
```

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* ``x `elem` (as ++ ys) = (x `elem` as) || (x `elem` ys)`` (I.H.)
- *show:* ``x `elem` ((a:as) ++ ys) = (x `elem` (a:as)) || (x `elem` ys)``

```
   x `elem` ((a:as) ++ ys)
=  x `elem` (a : (as ++ ys))               -- def ++
=  x == a || x `elem` (as ++ ys)           -- def elem
=  x == a || (x `elem` as || x `elem` ys)  -- I.H.
=  (x == a || x `elem` as) || x `elem` ys  -- || is associative
=  (x `elem` (a:as)) || (x `elem` ys)      -- def elem
```
$\square$
