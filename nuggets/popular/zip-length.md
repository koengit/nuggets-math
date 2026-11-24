---
title: "Exercise: length (zip xs ys) ≤ length xs"
kind: exercise
groups: [topics/structural-induction, exams/old-exams]
requires: [structural-induction, case-splitting]
---
```haskell
length []     = 0
length (x:xs) = 1 + length xs

zip []     _      = []
zip _      []     = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys
```

Prove by structural induction that for all lists `xs`, `ys`:
```haskell
length (zip xs ys) <= length xs
```
State your induction hypothesis clearly, and where you use it. You may use that `0 <= length xs` for all lists. *Hint:* in the step case you need a case split on whether `ys` is empty.

## Answer

By structural induction on `xs`. Let `P(xs) = "for all lists ys: length (zip xs ys) <= length xs"` — the "for all ys" is important, because we will use the I.H. for a *different* list.

**Base case:** `P([])`: `length (zip [] ys) = length [] ` by def zip, so `<=` holds.

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* for all lists `zs`: `length (zip as zs) <= length as` (I.H.)
- *show:* for all lists `ys`: `length (zip (a:as) ys) <= length (a:as)`

Case split on `ys`.

*Case 1:* `ys = []`.
```
   length (zip (a:as) [])
=  length []                    -- def zip
=  0                            -- def length
<= 1 + length as                -- 0 <= length as
=  length (a:as)                -- def length
```

*Case 2:* `ys = b:bs`.
```
   length (zip (a:as) (b:bs))
=  length ((a,b) : zip as bs)   -- def zip
=  1 + length (zip as bs)       -- def length
<= 1 + length as                -- I.H. with zs = bs
=  length (a:as)                -- def length
```
$\square$
