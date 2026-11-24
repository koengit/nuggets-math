---
title: "Exercise: take (length xs) xs = xs"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [structural-induction]
see-also: [take-drop]
---
```haskell
take n _  | n <= 0 = []
take n []          = []
take n (x:xs)      = x : take (n-1) xs
```

Prove that `take (length xs) xs = xs`, for all lists `xs`. You may assume that `length ys >= 0` for all lists `ys` (or prove it too!).

## Answer

By structural induction on `xs`. Let `P(xs) = "take (length xs) xs = xs"`.

**Base case:** `P([])`: `take (length []) [] = take 0 [] = []` (def length, def take).

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `take (length as) as = as` (I.H.)
- *show:* `take (length (a:as)) (a:as) = a:as`

```
   take (length (a:as)) (a:as)
=  take (1 + length as) (a:as)          -- def length
=  a : take ((1 + length as) - 1) as    -- def take, since 1 + length as > 0
=  a : take (length as) as              -- arithmetic
=  a : as                               -- I.H.
```
$\square$

(That `length ys >= 0` follows by a one-line induction: `length [] = 0 >= 0`, and `length (y:ys) = 1 + length ys >= 1 >= 0` by the I.H.)
