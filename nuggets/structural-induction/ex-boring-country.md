---
title: "Exercise: find the mistake — everyone in a boring country has the same name"
kind: exercise
groups: [topics/induction, exercises/week-5]
requires: [simple-induction]
see-also: [bogus-induction-horses]
---
A *boring country* is a country where no name is unique: for every person who lives there, there is another person living there with the same name.

> **To "prove":** Everyone in a boring country has the same name.
>
> **Proof:** By simple induction on the number $n$ of people in the boring country.
>
> **Base cases:** $n=1$: a country with only one person cannot be boring, so the statement is trivially true. $n=2$: in a boring country with 2 persons, both have to have the same name.
>
> **Step case:** Assume we have a boring country with $n$ people. The I.H. says that all people in that country have the same name. Now we add one person X, getting a country with $n+1$ people. For the resulting country to be boring, there must be at least one other person Y with the same name as X. But Y lives in the country with $n$ people, where everyone has the same name as Y. So everyone also has the same name as X.

The statement is obviously false — find a counterexample. Then find the mistake in the proof.

## Answer

**Counterexample:** a country with four people: Anna, Anna, Bo, Bo. It is boring, but not everyone has the same name.

**The mistake** is in the step case. It *builds* a country with $n+1$ people by adding a person to a boring country with $n$ people. But not every boring country with $n+1$ people can be built that way: removing a person from a boring country need not leave a boring country. In the counterexample, removing anyone leaves e.g. Anna, Bo, Bo, which is not boring, so the I.H. says nothing about it.

A correct step case must start from an **arbitrary** boring country with $n+1$ people and reduce it to a smaller case where the I.H. applies. Here that is impossible — which is exactly why the statement is false.

This "build-up error" is very common. The safe habit: in the step case, *start* with the object of size $n+1$ and take it apart. Compare [[bogus-induction-horses]].
