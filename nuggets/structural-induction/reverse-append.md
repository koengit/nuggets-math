---
title: "Lemma: reverse (xs ++ ys) = reverse ys ++ reverse xs"
kind: theorem
groups: [topics/structural-induction]
requires: [structural-induction]
uses: [append-associative, append-nil]
next: [reverse-reverse]
---
```haskell
reverse []     = []
reverse (x:xs) = reverse xs ++ [x]
```

**To prove:** `reverse (xs ++ ys) = reverse ys ++ reverse xs`, for all lists `xs`, `ys`.

**Proof:** by structural induction on `xs`. Let `P(xs) = "∀ys. reverse (xs ++ ys) = reverse ys ++ reverse xs"`.

**Base case:** `P([])`:
```
   reverse ([] ++ ys)
=  reverse ys                         -- def ++
=  reverse ys ++ []                   -- lemma xs ++ [] = xs
=  reverse ys ++ reverse []           -- def reverse
```

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `∀zs. reverse (as ++ zs) = reverse zs ++ reverse as` (I.H.)
- *show:* `∀ys. reverse ((a:as) ++ ys) = reverse ys ++ reverse (a:as)`

```
   reverse ((a:as) ++ ys)
=  reverse (a : (as ++ ys))           -- def ++
=  reverse (as ++ ys) ++ [a]          -- def reverse
=  (reverse ys ++ reverse as) ++ [a]  -- I.H.
=  reverse ys ++ (reverse as ++ [a])  -- ++ is associative
=  reverse ys ++ reverse (a:as)       -- def reverse
```
$\square$

We needed two lemmas: [[append-nil]] (the first example of [[structural-induction]]) and [[append-associative]]. This is typical: while proving something you discover that you need a lemma; you state it, prove it separately, and then use it.
