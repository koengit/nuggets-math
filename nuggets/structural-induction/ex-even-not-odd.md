---
title: "Exercise: even x = not (odd x) on Peano naturals"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [structural-induction-general]
next: [ex-plus-zero]
---
The natural numbers, defined the way they are in the foundations of mathematics:

```haskell
data Nat = Zero | Succ Nat

even :: Nat -> Bool
even Zero     = True
even (Succ n) = not (even n)

odd :: Nat -> Bool
odd Zero     = False
odd (Succ n) = not (odd n)
```

Prove that `even x = not (odd x)`, for all `x :: Nat`.

## Answer

By structural induction on `x`. Let `P(x) = "even x = not (odd x)"`.

**Base case:** `P(Zero)`:
```
   even Zero
=  True                 -- def even
=  not False            -- def not
=  not (odd Zero)       -- def odd
```

**Step case:** `P(a) ⟹ P(Succ a)`.

- *assume:* `even a = not (odd a)` (I.H.)
- *show:* `even (Succ a) = not (odd (Succ a))`

```
   even (Succ a)
=  not (even a)         -- def even
=  not (not (odd a))    -- I.H.
=  not (odd (Succ a))   -- def odd
```
$\square$

Structural induction over `Nat` is exactly [[simple-induction]]: `Zero` is the base case, `Succ` the step.
