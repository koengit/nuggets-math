---
title: "Exercise: an element of the reverse is an element of the list"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [structural-induction]
uses: [ex-elem-append]
---
With `elem` and `rev` as before, prove that for all `x` and all lists `xs`:

```haskell
x `elem` rev xs = x `elem` xs
```

*Hint:* use [[ex-elem-append]] as a lemma.

## Answer

By structural induction on `xs`. Let ``P(xs) = "x `elem` rev xs = x `elem` xs"``.

**Base case:** `P([])`: ``x `elem` rev [] = x `elem` []`` by def rev.

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* ``x `elem` rev as = x `elem` as`` (I.H.)
- *show:* ``x `elem` rev (a:as) = x `elem` (a:as)``

```
   x `elem` rev (a:as)
=  x `elem` (rev as ++ [a])                -- def rev
=  x `elem` rev as || x `elem` [a]         -- lemma (elem/++)
=  x `elem` as || x `elem` [a]             -- I.H.
=  x `elem` as || (x == a || x `elem` [])  -- def elem
=  x `elem` as || (x == a || False)        -- def elem
=  x `elem` as || x == a                   -- def ||
=  x == a || x `elem` as                   -- || is commutative
=  x `elem` (a:as)                         -- def elem
```
$\square$
