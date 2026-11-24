---
title: "Exercise: the MU puzzle"
kind: exercise
groups: [topics/invariants, exercises/week-2]
requires: [invariants]
---
The "MU puzzle" from Douglas Hofstadter's book *Gödel, Escher, Bach*. We make strings of the symbols M, I, U:

1. We start with the string MI.
2. If a string ends with I, we may add U at the end. (MUUI $\to$ MUUIU)
3. If a string starts with M, we may duplicate everything after the M. (MUUI $\to$ MUUIUUI)
4. We may replace III anywhere by U. (MUIIIU $\to$ MUUU)
5. We may remove UU anywhere. (MUUU $\to$ MU)

Can we make the string MU?

## Answer

**No.** Look at the number of I's in the string, and in particular at its remainder modulo 3.

**Invariant:** *the number of I's is not divisible by 3.*

- Initially (MI) there is 1 I.
- Rules 2 and 5 do not change the number of I's.
- Rule 4 decreases it by 3, which does not change divisibility by 3.
- Rule 3 doubles it: $n \mapsto 2n$. If $3 \nmid n$ then $3 \nmid 2n$ (since 3 is prime and $3 \nmid 2$; see [[euclids-lemma]]). Concretely, remainder 1 becomes 2 and 2 becomes 1.

MU has 0 I's, and $3 \mid 0$. So MU can never be made. $\square$
