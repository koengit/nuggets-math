---
title: "Exercise: flattening a mirrored tree reverses the list"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [ex-size-flatten]
uses: [reverse-append, append-associative]
---
With `Tree` and `flatten` as in [[ex-size-flatten]], and

```haskell
swap :: Tree a -> Tree a
swap Empty        = Empty
swap (Node p x q) = Node (swap q) x (swap p)
```

prove that `flatten (swap p) = rev (flatten p)` for all trees `p`.

*Hint:* use the lemma [[reverse-append]] about `rev` and `++`.

## Answer

By structural induction on the tree. Let `P(p) = "flatten (swap p) = rev (flatten p)"`.

**Base case:** `P(Empty)`:
```
   flatten (swap Empty)
=  flatten Empty              -- def swap
=  []                         -- def flatten
=  rev []                     -- def rev
=  rev (flatten Empty)        -- def flatten
```

**Step case:** `(P(a) ∧ P(b)) ⟹ P(Node a x b)`.

- *assume:* `flatten (swap a) = rev (flatten a)` (I.H.a), `flatten (swap b) = rev (flatten b)` (I.H.b)
- *show:* `flatten (swap (Node a x b)) = rev (flatten (Node a x b))`

```
   flatten (swap (Node a x b))
=  flatten (Node (swap b) x (swap a))             -- def swap
=  flatten (swap b) ++ [x] ++ flatten (swap a)    -- def flatten
=  rev (flatten b) ++ [x] ++ rev (flatten a)      -- I.H.a, I.H.b
=  rev (flatten b) ++ rev [x] ++ rev (flatten a)  -- rev [x] = [] ++ [x] = [x]
=  rev ([x] ++ flatten b) ++ rev (flatten a)      -- lemma rev/++
=  rev (flatten a ++ [x] ++ flatten b)            -- lemma rev/++
=  rev (flatten (Node a x b))                     -- def flatten
```
$\square$

(We silently use that `++` is associative ([[append-associative]]), which is why we can write `xs ++ ys ++ zs` without brackets.)
