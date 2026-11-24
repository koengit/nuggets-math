---
title: "Exercise: functions that never make a list longer"
kind: exercise
groups: [topics/structural-induction, exams/old-exams]
requires: [structural-induction, case-splitting]
see-also: [zip-length]
---
Prove by structural induction, for all lists `xs`:

(a) `length (init xs) <= length xs`, where
```haskell
init []     = []
init [x]    = []
init (x:xs) = x : init xs
```
(Example: `init [5,1,2,7] = [5,1,2]`. Note that Haskell's real `init` behaves slightly differently.)

(b) `length (evens xs) <= length xs`, where
```haskell
evens []                 = []
evens (x:xs) | even x    = x : evens xs
             | otherwise = evens xs
```
(Example: `evens [1,5,2,6,5,4] = [2,6,4]`.)

State your induction hypothesis clearly, and where you use it.

## Hint

(a) `init` has three cases; in the step case `a:as`, treat `as = []` (so the list is `[a]`) separately. (b) In the step case, case split on whether `a` is even, following the guards. Compare [[zip-length]].
