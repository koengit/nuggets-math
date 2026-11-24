---
title: "Exercise: which of these graphs have an Euler tour?"
kind: exercise
groups: [topics/graphs, exercises/week-6]
requires: [euler-tour]
---
Which of the following graphs have an Euler tour? For those that do, construct one.

(a) $K_5$: the complete graph on 5 nodes (every two of the 5 nodes are connected by an edge).

(b) $L_5$: the *line graph* with 5 nodes, $v_1 - v_2 - v_3 - v_4 - v_5$.

(c) The graph with nodes $v_1, \ldots, v_6$ and edges
$\{v_1,v_2\}, \{v_1,v_4\}, \{v_1,v_6\}, \{v_2,v_3\}, \{v_2,v_6\}, \{v_3,v_4\}, \{v_3,v_5\}, \{v_3,v_6\}, \{v_4,v_5\}, \{v_5,v_6\}$.

(These are figures 12.3, 12.5 and 12.17 in the MCS book.)

## Answer

(a) **Yes.** Every node has degree 4, which is even, and $K_5$ is connected. Draw the 5 nodes as a pentagon; then the edges form the outer pentagon and an inner five-pointed star. Starting at any node: first follow the star back to the start node, then go once around the pentagon. With nodes $1,\ldots,5$ around the pentagon: $1,3,5,2,4,1,2,3,4,5,1$.

(b) **No.** The two end nodes $v_1$ and $v_5$ have degree 1, which is odd. (It does have an Euler *walk*: from $v_1$ to $v_5$.)

(c) **No.** The degrees are: $v_1, v_2, v_4, v_5$ have degree 3 (odd), and $v_3, v_6$ have degree 4. Since there are nodes with odd degree, there is no Euler tour. (With *four* odd nodes there is not even an Euler walk.)
