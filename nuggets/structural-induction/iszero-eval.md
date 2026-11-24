---
title: "Example: proving an implication by structural induction"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction-general]
see-also: [eval-swap]
---
This function tries to quickly decide whether an expression equals 0 (it may answer `False` for some expressions that are 0, but it should never answer `True` wrongly):

```haskell
isZero (Num n)   = n == 0
isZero (Add a b) = isZero a && isZero b
isZero (Mul a b) = isZero a || isZero b
```

**To prove:** `isZero x ⟹ eval x = 0`, for all expressions `x`.

**Proof:** by structural induction on `x`. Let `P(x) = "isZero x ⟹ eval x = 0"`.

**Base case:** `P(Num n)`. Assume `isZero (Num n)`, so `n == 0` (def isZero). Then `eval (Num n) = n = 0` (def eval).

**Step case 1:** `(P(a) ∧ P(b)) ⟹ P(Add a b)`.

- *assume:* `isZero a ⟹ eval a = 0` and `isZero b ⟹ eval b = 0` (I.H.)
- *show:* `isZero (Add a b) ⟹ eval (Add a b) = 0`

1. Assume `isZero (Add a b)`. By def isZero, `isZero a` and `isZero b`.
2. By (1.) and the I.H.: `eval a = 0` and `eval b = 0`.
3. So `eval (Add a b) = eval a + eval b = 0 + 0 = 0` (def eval, 2.).

**Step case 2:** `(P(a) ∧ P(b)) ⟹ P(Mul a b)`, same I.H.

1. Assume `isZero (Mul a b)`. By def isZero, `isZero a` or `isZero b`.
2. By (1.) and the I.H.: `eval a = 0` or `eval b = 0`.
3. `eval (Mul a b) = eval a * eval b` (def eval). Case split on (2.): if `eval a = 0` this is `0 * eval b = 0`; if `eval b = 0` it is `eval a * 0 = 0`.
$\square$

**Implications in induction proofs.** Be careful about what you know and what you must show:

- To **prove** `A ⟹ B`: assume `A`, then prove `B`.
- To **use** `A ⟹ B` (e.g. an I.H. of that shape): first show that `A` holds; only then do you get `B`.

(Here, the I.H. for `a` is only useful once we know `isZero a`.)
