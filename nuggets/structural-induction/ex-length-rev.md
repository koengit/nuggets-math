---
title: "Exercise: reversing preserves the length"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [structural-induction]
uses: [length-append]
---
```haskell
rev []     = []
rev (x:xs) = rev xs ++ [x]

length []     = 0
length (x:xs) = 1 + length xs
```

Prove that `length (rev xs) = length xs`, for all lists `xs`.

*Hint:* you need [[length-append]] as a lemma.

## Answer

By structural induction on `xs`. Let `P(xs) = "length (rev xs) = length xs"`.

**Base case:** `P([])`: `length (rev []) = length []` by def rev.

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `length (rev as) = length as` (I.H.)
- *show:* `length (rev (a:as)) = length (a:as)`

```
   length (rev (a:as))
=  length (rev as ++ [a])          -- def rev
=  length (rev as) + length [a]    -- lemma length/++
=  length as + length [a]          -- I.H.
=  length as + 1                   -- def length (twice)
=  1 + length as                   -- + is commutative
=  length (a:as)                   -- def length
```
$\square$
