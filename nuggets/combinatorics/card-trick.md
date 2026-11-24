---
title: "A card trick: communicating a hidden card"
kind: puzzle
groups: [topics/combinatorics]
requires: [pigeonhole-principle, permutations-and-combinations]
---
A volunteer draws **5** cards from a normal deck and gives them to the magician's assistant. The assistant hides one of them, and lays the other 4 on the table in a row. The magician enters, looks at the 4 cards, and names the hidden card. How?

## Answer

**Choosing the hidden card.** There are 4 suits and 5 cards, so two cards share a suit ([[pigeonhole-principle]]). The assistant will hide one of these and put the other one **first**: that tells the magician the suit.

**Telling the value.** Count values cyclically: 2, 3, …, 10, J = 11, Q = 12, K = 13, A = 14, and then back to 2. Of the two cards with the same suit, one is at most **6 steps** ahead of the other going clockwise around the 13 values. Hide that one, and show the other: the magician must add between 1 and 6.

**Telling the number 1–6.** The remaining 3 cards can be laid out in $3! = 6$ orders ([[permutations-and-combinations]]). Order all cards (say first by value, then by suit) as low, middle, high; then the six orders 123, 132, 213, 231, 312, 321 encode the numbers 1 to 6.

*Example.* Cards ♢3, ♠A, ♠3, ♡Q, ♢8. Same suit: ♢3 and ♢8; 8 is 5 steps after 3, so hide ♢8 and put ♢3 first. Encode 5 = 312 = (high, low, middle) with the other three cards: ♠A, ♠3, ♡Q gives order ♠A (high), ♠3 (low), ♡Q (middle). The magician sees ♢3, ♠A, ♠3, ♡Q: suit ♢, value $3 + 5 = 8$.
