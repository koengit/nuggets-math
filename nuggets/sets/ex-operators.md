---
title: "Exercise: operators with and without associativity and commutativity"
kind: exercise
groups: [topics/sets-and-functions, exercises/week-1]
requires: [operator-properties]
---
(a) Give an operator $\star : \N \times \N \to \N$ that is **associative but not commutative**. Explain.

(b) Give an operator $\star : \N \times \N \to \N$ that is **commutative but not associative**. Explain.

(c) Do your operators have a unit element? Why (not)?

(d) For your operators, can you find elements that are each other's inverse? Why (not)?

## Answer

(a) $x \star y = x$ ("take the left one"). Associative: $x \star (y \star z) = x$ and $(x \star y) \star z = x \star y = x$. Not commutative: $1 \star 2 = 1$ but $2 \star 1 = 2$.

(b) $x \star y = |x - y|$. Commutative: $|x - y| = |y - x|$. Not associative: $1 \star (2 \star 3) = 1 \star 1 = 0$, but $(1 \star 2) \star 3 = 1 \star 3 = 2$.

(c) For (a): **no**. A unit $e$ would need $e \star x = x$ for all $x$, but $e \star x = e$; this fails for any $x \ne e$. (There are many *right* units, though: $x \star e = x$ for every $e$.) For (b): **yes**, $e = 0$: $0 \star x = |0 - x| = x$ and $x \star 0 = x$ (for natural numbers $x$).

(d) Only for (b), which has a unit. $a$ and $b$ are inverses when $a \star b = 0$, i.e. $|a - b| = 0$, i.e. $a = b$: **every element is its own inverse**, and has no other.
