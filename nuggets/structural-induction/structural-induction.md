---
title: Structural induction over lists
kind: method
groups: [topics/structural-induction]
requires: [simple-induction, equational-reasoning]
next: [structural-induction-general, length-append, append-associative]
---
[[simple-induction]] and [[strong-induction]] prove properties of natural numbers. But what if we want to prove, for example,

```haskell
xs ++ [] = xs      -- for all lists xs
```

? We *could* do induction over the length of `xs`, but that is unnatural: there are no numbers anywhere in the statement.

**Structural induction** proves properties of things with a recursive structure: lists, expressions, trees, … in fact any *recursive datatype*. It has the same shape as simple induction: base case(s), and step case(s) in which we may assume the property for the *smaller* parts.

Given the definition

```haskell
[]     ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)
```

**To prove:** `xs ++ [] = xs`, for all lists `xs`.

**Proof:** by structural induction on `xs`. Let `P(xs) = "xs ++ [] = xs"`.

**Base case:** `P([]) = "[] ++ [] = []"`. This follows from the definition of `++`.

**Step case:** `P(as) ⟹ P(a:as)`.

- *assume:* `P(as) = "as ++ [] = as"` (I.H.)
- *show:* `P(a:as) = "(a:as) ++ [] = a:as"`

```
   (a:as) ++ []
=  a : (as ++ [])      -- def ++
=  a : as              -- I.H.
```
which is what we had to prove. $\square$

**The recipe for lists.** A list is either empty (`[]`, a non-recursive constructor) or an element in front of a list (`:`, a recursive constructor). So there is

- one **base case**: the list is `[]`;
- one **step case**: the list is `a:as`, and we may assume the property for the tail `as` (the I.H.).

Always write down `P`, what you assume (the I.H.), and what you have to show — just as in [[how-to-write-induction-proofs]].
