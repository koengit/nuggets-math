---
title: "Example: simplification does not change the value"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction-general, case-splitting]
see-also: [eval-swap]
---
```haskell
simp (Num n)   = Num n
simp (Add a b) = Add (simp a) (simp b)
simp (Mul a b) | a == Num 1 = simp b
               | b == Num 1 = simp a
               | otherwise  = Mul (simp a) (simp b)
```
(with `eval` as in [[eval-swap]]).

**To prove:** `eval (simp x) = eval x`, for all expressions `x`.

**Proof:** by structural induction on `x`. Let `P(x) = "eval (simp x) = eval x"`.

**Base case:** `P(Num n)`:
```
   eval (simp (Num n))
=  eval (Num n)                       -- def simp
```

**Step case 1:** `(P(a) ∧ P(b)) ⟹ P(Add a b)`. Assume `eval (simp a) = eval a` and `eval (simp b) = eval b` (I.H.).
```
   eval (simp (Add a b))
=  eval (Add (simp a) (simp b))       -- def simp
=  eval (simp a) + eval (simp b)      -- def eval
=  eval a + eval b                    -- I.H. twice
=  eval (Add a b)                     -- def eval
```

**Step case 2:** `(P(a) ∧ P(b)) ⟹ P(Mul a b)`. Same I.H. We split into the three cases of the definition of `simp`.

*Case 1:* `a = Num 1`.
```
   eval (simp (Mul a b))
=  eval (simp b)                      -- def simp
=  eval b                             -- I.H.
=  1 * eval b                         -- 1 * z = z
=  eval (Num 1) * eval b              -- def eval
=  eval (Mul a b)                     -- def eval, a = Num 1
```

*Case 2:* `a /= Num 1`, `b = Num 1`.
```
   eval (simp (Mul a b))
=  eval (simp a)                      -- def simp
=  eval a                             -- I.H.
=  eval a * eval (Num 1)              -- z * 1 = z, def eval
=  eval (Mul a b)                     -- def eval, b = Num 1
```

*Case 3:* `a /= Num 1`, `b /= Num 1`.
```
   eval (simp (Mul a b))
=  eval (Mul (simp a) (simp b))       -- def simp
=  eval (simp a) * eval (simp b)      -- def eval
=  eval a * eval b                    -- I.H. twice
=  eval (Mul a b)                     -- def eval
```
$\square$

When a function is defined with guards, a case split that follows the guards is usually the way to go.
