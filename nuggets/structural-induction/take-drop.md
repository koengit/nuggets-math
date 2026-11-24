---
title: "Example: take n xs ++ drop n xs = xs"
kind: example
groups: [topics/structural-induction]
requires: [structural-induction, case-splitting]
see-also: [qreverse-correct]
---
```haskell
take n _  | n <= 0 = []
take n []          = []
take n (x:xs)      = x : take (n-1) xs

drop n xs | n <= 0 = xs
drop n []          = []
drop n (x:xs)      = drop (n-1) xs
```

**To prove:** `take n xs ++ drop n xs = xs`, for every integer `n` and every list `xs`.

**Proof:** by structural induction on `xs`. Let `P(xs) = "∀n. take n xs ++ drop n xs = xs"`.

**Base case:** `P([])`:
```
   take n [] ++ drop n []
=  [] ++ []                    -- def take, def drop
=  []                          -- def ++
```

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `∀k. take k as ++ drop k as = as` (I.H.)
- *show:* `∀n. take n (a:as) ++ drop n (a:as) = a:as`

We do a case split on `n`.

*Case 1:* `n <= 0`.
```
   take n (a:as) ++ drop n (a:as)
=  [] ++ (a:as)                              -- def take, def drop (n <= 0)
=  a:as                                      -- def ++
```

*Case 2:* `n > 0`.
```
   take n (a:as) ++ drop n (a:as)
=  (a : take (n-1) as) ++ drop (n-1) as      -- def take, def drop (n > 0)
=  a : (take (n-1) as ++ drop (n-1) as)      -- def ++
=  a : as                                    -- I.H. with k = n-1
```
$\square$

**Note 1.** As in [[qreverse-correct]], the I.H. quantifies over the number (renamed to `k`), because we need it for `k = n-1`, not for `n`.

**Note 2.** It is also possible to prove this by *integer induction* on `n` (base case: all `n <= 0`; step case: from `n` to `n+1`), doing a case split on `xs` in the step case.
