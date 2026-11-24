---
title: "Example: swapping does not change the value of an expression"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction-general]
---
```haskell
eval (Num n)   = n
eval (Add a b) = eval a + eval b
eval (Mul a b) = eval a * eval b

swap (Num n)   = Num n
swap (Add a b) = Add (swap b) (swap a)
swap (Mul a b) = Mul (swap b) (swap a)
```

**To prove:** `eval (swap x) = eval x`, for all expressions `x`.

**Proof:** by structural induction on `x`. Let `P(x) = "eval (swap x) = eval x"`.

**Base case:** `P(Num n)`:
```
   eval (swap (Num n))
=  eval (Num n)                      -- def swap
```

**Step case 1:** `(P(a) ∧ P(b)) ⟹ P(Add a b)`.

- *assume:* `eval (swap a) = eval a`, `eval (swap b) = eval b` (I.H.)
- *show:* `eval (swap (Add a b)) = eval (Add a b)`

```
   eval (swap (Add a b))
=  eval (Add (swap b) (swap a))      -- def swap
=  eval (swap b) + eval (swap a)     -- def eval
=  eval b + eval a                   -- I.H. twice
=  eval a + eval b                   -- + is commutative
=  eval (Add a b)                    -- def eval
```

**Step case 2:** `(P(a) ∧ P(b)) ⟹ P(Mul a b)`.

- *assume:* `eval (swap a) = eval a`, `eval (swap b) = eval b` (I.H.)
- *show:* `eval (swap (Mul a b)) = eval (Mul a b)`

```
   eval (swap (Mul a b))
=  eval (Mul (swap b) (swap a))      -- def swap
=  eval (swap b) * eval (swap a)     -- def eval
=  eval b * eval a                   -- I.H. twice
=  eval a * eval b                   -- * is commutative
=  eval (Mul a b)                    -- def eval
```
$\square$
