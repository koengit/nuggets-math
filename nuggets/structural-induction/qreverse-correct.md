---
title: "Generalizing the statement: fast reverse is correct"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction]
uses: [append-associative]
see-also: [take-drop]
---
`reverse` from [[reverse-append]] is slow (quadratic), because every step appends at the end. Here is a much better implementation, using an *accumulating parameter*:

```haskell
qreverse []     ys = ys
qreverse (x:xs) ys = qreverse xs (x:ys)
```

We want to show `qreverse xs [] = reverse xs`. This **cannot** be proved directly by induction: in the step case, `qreverse (a:as) []` becomes `qreverse as [a]`, and the I.H. only talks about `qreverse as []`. So we **generalize** the statement to something that *is* provable by induction:

**To prove:** `qreverse xs ys = reverse xs ++ ys`, for all lists `xs`, `ys`.

(Taking `ys = []` and using [[append-nil]] then gives what we wanted.)

**Proof:** by structural induction on `xs`. Let `P(xs) = "∀ys. qreverse xs ys = reverse xs ++ ys"`.

**Base case:** `P([])`:
```
   qreverse [] ys
=  ys                          -- def qreverse
=  [] ++ ys                    -- def ++
=  reverse [] ++ ys            -- def reverse
```

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `∀zs. qreverse as zs = reverse as ++ zs` (I.H.)
- *show:* `∀ys. qreverse (a:as) ys = reverse (a:as) ++ ys`

```
   qreverse (a:as) ys
=  qreverse as (a:ys)          -- def qreverse
=  reverse as ++ (a:ys)        -- I.H. with zs = a:ys
=  reverse as ++ ([a] ++ ys)   -- def ++
=  (reverse as ++ [a]) ++ ys   -- ++ is associative
=  reverse (a:as) ++ ys        -- def reverse
```
$\square$

**The important detail:** the I.H. still quantifies over the second list (renamed to `zs`). That is essential, because we use it with `zs = a:ys`, not with `ys`. Had we fixed `ys` in the I.H., we could not have used it.
