---
title: "Exercise: insertion sort produces an ordered list"
kind: exercise
groups: [topics/structural-induction, exercises/week-5]
requires: [structural-induction, case-splitting]
---
```haskell
sort :: [Integer] -> [Integer]
sort []     = []
sort (x:xs) = insert x (sort xs)

insert :: Integer -> [Integer] -> [Integer]
insert x []              = [x]
insert x (y:ys) | x <= y = x : y : ys
                | x > y  = y : insert x ys

ordered :: [Integer] -> Bool
ordered []       = True
ordered [x]      = True
ordered (x:y:xs) = x <= y && ordered (y:xs)
```

Prove that `ordered (sort xs)` for all lists `xs`.

You will need a helper lemma: for all `x` and all lists `xs`, `ordered xs ⟹ ordered (insert x xs)`. Prove this first, by structural induction on `xs`; in the step case you need a case split on whether the tail of the list is empty or not.

## Answer

**Helper lemma.** `ordered ys ⟹ ordered (insert x ys)`, for all `x`, `ys`.

By structural induction on `ys`. Let `P(ys) = "∀x. ordered ys ⟹ ordered (insert x ys)"`.

*Base case:* `insert x [] = [x]`, and `ordered [x] = True`.

*Step case:* `P(bs) ⟹ P(b:bs)`. Assume the I.H. `∀x. ordered bs ⟹ ordered (insert x bs)`, and assume `ordered (b:bs)`. Note that then also `ordered bs` (if `bs = c:cs`, then `ordered (b:c:cs) = b <= c && ordered (c:cs)`; if `bs = []` it is trivial). We case split on the guards of `insert`.

- *Case `x <= b`:* `insert x (b:bs) = x : b : bs`, and `ordered (x:b:bs) = x <= b && ordered (b:bs) = True && True`.
- *Case `x > b`:* `insert x (b:bs) = b : insert x bs`. By the I.H. (since `ordered bs`), `ordered (insert x bs)`. It remains to show that `b` is at most the first element of `insert x bs`. Case split on `bs`:
  - `bs = []`: `insert x [] = [x]`, and `b < x`. So `ordered [b, x]`.
  - `bs = c:cs`: then `b <= c` (from `ordered (b:c:cs)`). The list `insert x (c:cs)` starts with either `x` (if `x <= c`) or `c` (if `x > c`). In both cases the first element is `>= b`, since `x > b` and `c >= b`.

  So `ordered (b : insert x bs) = b <= (first element) && ordered (insert x bs) = True`.

**Main theorem.** `ordered (sort xs)`, by structural induction on `xs`.

- *Base case:* `ordered (sort []) = ordered [] = True`.
- *Step case:* assume `ordered (sort as)` (I.H.). Then `sort (a:as) = insert a (sort as)` (def sort), which is ordered by the helper lemma applied to the I.H. $\square$

*Remark:* "sorted" also requires that the result is a *permutation* of the input (otherwise `sort xs = []` would be a correct sorting function!). That is a separate property, which can be proved in the same style.
