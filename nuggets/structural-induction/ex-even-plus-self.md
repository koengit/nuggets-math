---
title: "Exercise: x + x is even"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [ex-even-not-odd]
uses: [plus-succ]
---
With `Nat`, `even` and `plus` as in [[ex-even-not-odd]] and [[ex-plus-zero]], prove that `even (plus x x) = True` for all `x :: Nat`.

*Hint:* you need the helper lemma [[plus-succ]]: `plus x (Succ y) = Succ (plus x y)`.

## Answer

By structural induction on `x`. Let `P(x) = "even (plus x x) = True"`.

**Base case:** `even (plus Zero Zero) = even Zero = True` (def plus, def even).

**Step case:** `P(a) ⟹ P(Succ a)`.

- *assume:* `even (plus a a) = True` (I.H.)
- *show:* `even (plus (Succ a) (Succ a)) = True`

```
   even (plus (Succ a) (Succ a))
=  even (Succ (plus a (Succ a)))    -- def plus
=  even (Succ (Succ (plus a a)))    -- lemma plus-succ
=  not (even (Succ (plus a a)))     -- def even
=  not (not (even (plus a a)))      -- def even
=  not (not True)                   -- I.H.
=  True                             -- def not (twice)
```
$\square$
