---
title: "Lemma: xs ++ [] = xs"
kind: theorem
groups: [topics/structural-induction]
requires: [structural-induction]
---
**Lemma.** `xs ++ [] = xs`, for all lists `xs`.

The proof is the first worked example in [[structural-induction]]: base case by the definition of `++`, step case

```
   (a:as) ++ []
=  a : (as ++ [])      -- def ++
=  a : as              -- I.H.
```

Note that `[] ++ xs = xs` needs no induction at all: it is the first line of the definition of `++`. The asymmetry comes from `++` being defined by recursion on its first argument.
