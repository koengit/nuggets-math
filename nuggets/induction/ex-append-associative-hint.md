---
title: "Exercise: ++ is associative (by induction on the length)"
kind: exercise
groups: [topics/induction, exercises/week-3]
requires: [simple-induction]
see-also: [append-associative]
---
Look at the definition of the Haskell function `++`:

```haskell
[]     ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)
```

Show that for all lists `xs`, `ys`, `zs`: `xs ++ (ys ++ zs) = (xs ++ ys) ++ zs`.

*Hint:* prove "for every $n$: if `xs` has length $n$, then for all `ys`, `zs`, `xs ++ (ys ++ zs) = (xs ++ ys) ++ zs`" by induction over $n$.

## Answer

By simple induction over $n$ = the length of `xs`.

*Base case:* $n = 0$, so `xs = []`. Then `[] ++ (ys ++ zs) = ys ++ zs = ([] ++ ys) ++ zs` (def `++`, twice).

*Step case:* assume the statement for all lists of length $k$ (I.H.). A list of length $k+1$ has the form `a:as` with `as` of length $k$:
```
   (a:as) ++ (ys ++ zs)
=  a : (as ++ (ys ++ zs))     -- def ++
=  a : ((as ++ ys) ++ zs)     -- I.H. (as has length k)
=  (a : (as ++ ys)) ++ zs     -- def ++
=  ((a:as) ++ ys) ++ zs       -- def ++
```
$\square$

Notice that the numbers play no real role: this is exactly the [[structural-induction]] proof of [[append-associative]], in disguise.
