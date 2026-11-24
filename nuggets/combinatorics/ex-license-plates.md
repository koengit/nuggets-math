---
title: "Exercise: Dutch licence plates"
kind: exercise
groups: [topics/combinatorics, exercises/week-7]
requires: [counting-principles]
---
In the Netherlands, licence plates consist of three groups of symbols. Each group is either two letters (from A–Z, but not I, O or Q) or two digits (0–9). How many different licence plates are there?

## Answer

There are $26 - 3 = 23$ letters. One group: $23 \cdot 23 + 10 \cdot 10 = 529 + 100 = 629$ possibilities (two letters *or* two digits). Three independent groups:
$$ 629^3 = 248{,}858{,}189 . $$
