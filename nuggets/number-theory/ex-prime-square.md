---
title: "Exercise: p | a² implies p² | a²"
kind: exercise
groups: [topics/number-theory, exercises/week-4]
requires: [euclids-lemma]
---
Show: if $p$ is prime and $p \mid a^2$, then $p^2 \mid a^2$. Does this also hold when $p$ is not prime?

## Answer

If $p \mid a^2 = a \cdot a$, then by [[euclids-lemma]] $p \mid a$ (both cases of the lemma say the same). So $a = pc$ for some $c$, hence $a^2 = p^2 c^2$, so $p^2 \mid a^2$.

**Not for non-primes.** Take $p = 4$ and $a = 2$: $4 \mid 4 = a^2$, but $16 \nmid 4$. (Or $p = 12$, $a = 6$: $12 \mid 36$, but $144 \nmid 36$.)
