---
title: "Drawing a circle with only additions: an invariant in graphics"
kind: example
groups: [topics/invariants]
requires: [invariants]
see-also: [russian-multiplication]
---
How do you draw a circle of radius $r$ (an integer) on a screen of pixels, fast, without square roots or even multiplications in the loop? **Bresenham's (midpoint) circle algorithm** draws one eighth of the circle, from the top $(0, r)$ going right, while $x \le y$; the other seven eighths follow by symmetry.

In each step $x$ increases by 1, and $y$ either stays or decreases by 1: the next pixel is $(x+1, y)$ or $(x+1, y-1)$. Choose the one closest to the circle by looking at the **midpoint** $(x+1, y-\frac12)$ between them, using $f(x, y) = x^2 + y^2 - r^2$ (negative inside the circle, positive outside):

```
x, y, d := 0, r, 1 - r
while x <= y:
    plot (x, y)                      -- and its 7 mirror images
    if d < 0:  x, d := x+1, d + 2(x+1) + 1               -- keep y
    else:      x, y, d := x+1, y-1, d + 2(x+1) - 2(y-1) + 1
```

**The invariant** explains everything:
$$ d + \tfrac14 = f\big(x + 1,\, y - \tfrac12\big) = (x+1)^2 + \big(y - \tfrac12\big)^2 - r^2 . $$
So "$d < 0$" means exactly that the midpoint lies inside the circle, so the circle passes closer to $(x+1, y)$.

- *Initially* $(x, y) = (0, r)$: $f(1, r - \frac12) = 1 + r^2 - r + \frac14 - r^2 = \frac54 - r = (1 - r) + \frac14$. ✓
- *Step, $y$ kept:* $f(x+2, y - \frac12) - f(x+1, y - \frac12) = (x+2)^2 - (x+1)^2 = 2(x+1) + 1$, which is what is added to $d$. ✓
- *Step, $y$ decreased:* $f(x+2, y-\frac32) - f(x+1, y-\frac12) = 2(x+1) + 1 + \big((y - \frac32)^2 - (y - \frac12)^2\big) = 2(x+1) + 1 - 2(y-1)$. ✓

(The $\frac14$ never matters: $d$ is an integer and $d + \frac14 < 0 \iff d < 0$.)

Links: [Wikipedia: midpoint circle algorithm](https://en.wikipedia.org/wiki/Midpoint_circle_algorithm).
