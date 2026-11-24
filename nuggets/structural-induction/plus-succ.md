---
title: "Lemma: plus x (Succ y) = Succ (plus x y)"
kind: theorem
groups: [topics/structural-induction, exercises/week-5]
requires: [ex-plus-zero]
next: [ex-even-plus-self]
---
With `plus` as in [[ex-plus-zero]]:

**To prove:** `plus x (Succ y) = Succ (plus x y)`, for all `x, y :: Nat`.

**Proof:** by structural induction on `x`. Let `P(x) = "plus x (Succ y) = Succ (plus x y)"`.

**Base case:** `P(Zero)`:
```
   plus Zero (Succ y)
=  Succ y                    -- def plus
=  Succ (plus Zero y)        -- def plus
```

**Step case:** `P(a) ⟹ P(Succ a)`.

- *assume:* `plus a (Succ y) = Succ (plus a y)` (I.H.)
- *show:* `plus (Succ a) (Succ y) = Succ (plus (Succ a) y)`

```
   plus (Succ a) (Succ y)
=  Succ (plus a (Succ y))    -- def plus
=  Succ (Succ (plus a y))    -- I.H.
=  Succ (plus (Succ a) y)    -- def plus
```
$\square$

Together with [[ex-plus-zero]], this is the key step towards proving that `plus` is commutative.
