---
title: Structural induction over any recursive datatype
kind: method
groups: [topics/structural-induction]
requires: [structural-induction]
next: [tree-size-height, eval-swap, eval-simp, iszero-eval]
---
In general, structural induction over a datatype has

- **one base case for each non-recursive constructor**, and
- **one step case for each recursive constructor**, where we may assume the property for every *recursive argument* of that constructor.

**Example.** Take arithmetic expressions:

```haskell
data Expr = Num Integer
          | Add Expr Expr
          | Mul Expr Expr

swap :: Expr -> Expr
swap (Num n)   = Num n
swap (Add a b) = Add (swap b) (swap a)
swap (Mul a b) = Mul (swap b) (swap a)
```

`Expr` has one non-recursive constructor (`Num`) and two recursive ones (`Add`, `Mul`), each with two recursive arguments. So: one base case, two step cases, each with *two* induction hypotheses.

**To prove:** `swap (swap x) = x`, for all expressions `x`.

**Proof:** by structural induction on `x`. Let `P(x) = "swap (swap x) = x"`.

**Base case:** `P(Num n)`:
```
   swap (swap (Num n))
=  swap (Num n)                            -- def swap
=  Num n                                   -- def swap
```

**Step case 1:** `(P(a) ∧ P(b)) ⟹ P(Add a b)`.

- *assume:* `swap (swap a) = a` (I.H.a) and `swap (swap b) = b` (I.H.b)
- *show:* `swap (swap (Add a b)) = Add a b`

```
   swap (swap (Add a b))
=  swap (Add (swap b) (swap a))            -- def swap
=  Add (swap (swap a)) (swap (swap b))     -- def swap
=  Add a b                                 -- I.H.a, I.H.b
```

**Step case 2:** `(P(a) ∧ P(b)) ⟹ P(Mul a b)`.

- *assume:* `swap (swap a) = a` (I.H.a) and `swap (swap b) = b` (I.H.b)
- *show:* `swap (swap (Mul a b)) = Mul a b`

```
   swap (swap (Mul a b))
=  swap (Mul (swap b) (swap a))            -- def swap
=  Mul (swap (swap a)) (swap (swap b))     -- def swap
=  Mul a b                                 -- I.H.a, I.H.b
```
which is what we had to prove. $\square$

Natural numbers fit this scheme too: with `data Nat = Zero | Succ Nat`, structural induction over `Nat` *is* [[simple-induction]] (base case `Zero`, step case `Succ n`). See [[ex-even-not-odd]].
