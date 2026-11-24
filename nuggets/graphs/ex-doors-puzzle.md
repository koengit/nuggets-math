---
title: "Exercise: walk through every door exactly once"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [euler-tour]
---
![floor plan](assets/doors.jpg)

This picture makes the rounds on social media every now and then: can you walk through every door of this house exactly once? If not, which single door can we close so that there is a solution?

*Hint:* model the house as a graph: the rooms (and the outside) are nodes, the doors are edges. Look at whether the degrees are even or odd. The puzzle asks for an **Euler walk**, not an Euler tour: start and finish do not have to be in the same place. How many nodes of odd degree are allowed then?

## Answer

**There is no solution.** Four areas have an odd number of doors: the outside, the two bigger rooms, and the smaller middle room. An Euler walk allows at most two nodes of odd degree (the start and the end); every other room you enter must also be left, which uses its doors in pairs. With four odd areas you always get stuck.

**Close a door between two odd areas**, for example the one shown in red:

![solution](assets/doors-sol.png)

Then only two areas have odd degree (here: the two bigger rooms), and a walk exists that starts in one of them and ends in the other.
