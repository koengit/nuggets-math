---
title: "The four cards puzzle (Wason's selection task)"
kind: puzzle
groups: [topics/logic]
requires: [implication]
---
Every card has a letter on one side and a digit on the other. Someone claims:

> **If** there is a vowel on one side, **then** there is an even digit on the other side.

On the table are four cards showing

$$ \boxed{A} \qquad \boxed{B} \qquad \boxed{7} \qquad \boxed{8} $$

Which cards must you turn over to find out whether the claim is true?

## Answer

Turn over **A** and **7**.

The claim is the implication *vowel $\Rightarrow$ even*. It is only broken by a card with a vowel and an odd digit.

1. **A**: a vowel; if the back is odd, the claim is false. *Turn.*
2. **B**: not a vowel; the implication says nothing about it. *Don't turn.*
3. **7**: odd; if the back is a vowel, the claim is false. *Turn!*
4. **8**: even; whatever is on the back, the implication holds (a true conclusion makes the implication true). *Don't turn!*

Most people (in Wason's 1966 experiment, and ever since) choose A and 8. Card 8 is the *converse* trap, and card 7 is the *contrapositive*: "vowel $\Rightarrow$ even" is equivalent to "odd $\Rightarrow$ not a vowel" ([[contrapositive-and-converse]]).
