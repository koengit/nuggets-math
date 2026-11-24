---
title: "Exercise: size of a tree = length of its flattening"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [structural-induction-general]
uses: [length-append]
---
```haskell
data Tree a = Empty | Node (Tree a) a (Tree a)

flatten :: Tree a -> [a]
flatten Empty        = []
flatten (Node p x q) = flatten p ++ [x] ++ flatten q

size :: Tree a -> Integer
size Empty        = 0
size (Node p _ q) = size p + 1 + size q
```

Prove that `size p = length (flatten p)`, for all trees `p`.

## Answer

By structural induction on the tree. Let `P(p) = "size p = length (flatten p)"`.

**Base case:** `P(Empty)`:
```
   size Empty
=  0                          -- def size
=  length []                  -- def length
=  length (flatten Empty)     -- def flatten
```

**Step case:** `(P(a) ∧ P(b)) ⟹ P(Node a x b)`.

- *assume:* `size a = length (flatten a)` (I.H.a), `size b = length (flatten b)` (I.H.b)
- *show:* `size (Node a x b) = length (flatten (Node a x b))`

```
   size (Node a x b)
=  size a + 1 + size b                                    -- def size
=  length (flatten a) + 1 + length (flatten b)            -- I.H.a, I.H.b
=  length (flatten a) + length [x] + length (flatten b)   -- def length
=  length (flatten a ++ [x]) + length (flatten b)         -- lemma length/++
=  length (flatten a ++ [x] ++ flatten b)                 -- lemma length/++
=  length (flatten (Node a x b))                          -- def flatten
```
$\square$
