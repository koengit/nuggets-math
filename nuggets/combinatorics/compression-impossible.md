---
title: "No compression program can shorten every file"
kind: example
groups: [topics/combinatorics]
requires: [pigeonhole-principle, geometric-sum]
---
A compression program (like zip) is a function $f$ from bit strings to bit strings. It must be **injective** (otherwise two different files would compress to the same thing, and we could not decompress). Can it make *every* file shorter?

**No.** Take all bit strings of length $n$: there are $2^n$ of them. Shorter bit strings (lengths $0, 1, \ldots, n-1$) number
$$ 2^0 + 2^1 + \dots + 2^{n-1} = 2^n - 1 $$
([[geometric-sum]]). If every string of length $n$ were mapped to a shorter one, $2^n$ things would go into $2^n - 1$ boxes, so two would collide ([[pigeonhole-principle]]): $f$ is not injective.

So every lossless compression program makes some files *longer* (or keeps them equal). It only works because the files we care about (text, images) are very special.
