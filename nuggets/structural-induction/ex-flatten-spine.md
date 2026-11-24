---
title: "Exercise: flatten (spine xs) = xs"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [ex-size-flatten]
---
The function `spine` builds a tree from a list, putting all elements in the right "spine" of the tree:

```haskell
spine :: [a] -> Tree a
spine []     = Empty
spine (x:xs) = Node Empty x (spine xs)
```

Prove that `flatten (spine xs) = xs` for all lists `xs` (with `flatten` as in [[ex-size-flatten]]).

## Answer

By structural induction on `xs`. Let `P(xs) = "flatten (spine xs) = xs"`.

**Base case:** `flatten (spine []) = flatten Empty = []` (def spine, def flatten).

**Step case:** assume `flatten (spine as) = as` (I.H.); show `flatten (spine (a:as)) = a:as`:
```
   flatten (spine (a:as))
=  flatten (Node Empty a (spine as))            -- def spine
=  flatten Empty ++ [a] ++ flatten (spine as)   -- def flatten
=  [] ++ [a] ++ flatten (spine as)              -- def flatten
=  a : flatten (spine as)                       -- def ++ (three times)
=  a : as                                       -- I.H.
```
$\square$

Note that the induction is over the *list*, even though the statement involves trees: we follow the recursion of `spine`, which is on lists.
