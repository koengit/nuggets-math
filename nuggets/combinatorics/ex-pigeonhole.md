---
title: "Exercise: two pigeonhole problems"
kind: exercise
groups: [topics/combinatorics, exercises/week-7]
requires: [pigeonhole-principle, modular-arithmetic]
---
Use the pigeonhole principle; clearly indicate what the pigeons and the holes are.

(a) Given a set of 100 different integers. Show that two of them have a difference that is a multiple of 37.

(b) Given 5 points inside a unit square. Show that two of them are at distance at most $1/\sqrt2$.

## Answer

(a) "$a - b$ is a multiple of 37" means $a \equiv b \pmod{37}$. There are 37 congruence classes (remainders) modulo 37. **Pigeons:** the 100 numbers; **holes:** the 37 classes. Since $100 > 37$, two numbers are in the same class.

(b) Divide the unit square into 4 equal squares of side $\frac12$. **Pigeons:** the 5 points; **holes:** the 4 small squares. Two points lie in the same small square, and two points in a square of side $\frac12$ are at most a diagonal apart:
$$ \sqrt{(1/2)^2 + (1/2)^2} = \sqrt{1/2} = 1/\sqrt2 . $$
