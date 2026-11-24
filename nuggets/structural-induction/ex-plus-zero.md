---
title: "Exercise: plus x Zero = x"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [ex-even-not-odd]
next: [plus-succ]
---
```haskell
plus :: Nat -> Nat -> Nat
plus Zero     y = y
plus (Succ x) y = Succ (plus x y)
```

Prove that `plus x Zero = x`, for all `x :: Nat`. (Note that `plus Zero x = x` is just the definition; this is the other side.)

## Answer

By structural induction on `x`. Let `P(x) = "plus x Zero = x"`.

**Base case:** `plus Zero Zero = Zero` by def plus.

**Step case:** assume `plus a Zero = a` (I.H.); show `plus (Succ a) Zero = Succ a`:
```
   plus (Succ a) Zero
=  Succ (plus a Zero)   -- def plus
=  Succ a               -- I.H.
```
$\square$
