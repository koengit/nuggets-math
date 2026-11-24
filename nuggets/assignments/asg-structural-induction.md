---
title: "Exercises: sum over ++, and evaluating expressions"
kind: exercise
groups: [topics/structural-induction, assignments/assignment-5]
requires: [structural-induction-general]
---
*(Assignment questions; no answers are published.)*

```haskell
sum :: [Integer] -> Integer
sum []     = 0
sum (x:xs) = x + sum xs

data Expr = Num Integer | Add Expr Expr

eval :: Expr -> Integer
eval (Num n)   = n
eval (Add a b) = eval a + eval b

numbers :: Expr -> [Integer]
numbers (Num n)   = [n]
numbers (Add a b) = numbers a ++ numbers b
```

**1.** Prove by structural induction that `sum (xs ++ ys) = sum xs + sum ys` for all lists `xs`, `ys`.

**2.** Prove by structural induction that `sum (numbers x) = eval x` for all expressions `x`. (You may need a helper lemma about `sum` and `++`; state it and prove it.)

State the I.H. in each induction step, and give the reason for every step.
