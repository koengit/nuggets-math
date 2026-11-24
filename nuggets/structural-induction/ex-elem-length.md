---
title: "Exercise: a list with an element is not empty (case split, no induction)"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [case-splitting, structural-induction]
---
Prove that, for all `x` and all lists `xs`:

```haskell
x `elem` xs  ==>  length xs > 0
```

You may assume that `length ys >= 0` for all lists `ys`. *Hint:* you don't need induction, just a case split.

## Answer

By case split on `xs`.

**Case 1:** `xs = []`. Then ``x `elem` [] = False`` (def elem), and `False ==> anything` is `True`.

**Case 2:** `xs = a:as`. Then `length (a:as) = 1 + length as` (def length), and since `length as >= 0`, we have `1 + length as > 0`. So the conclusion is `True`, and hence the implication is `True`. $\square$

Not every property of lists needs induction: when the I.H. is not needed, a case split on the constructors suffices.
