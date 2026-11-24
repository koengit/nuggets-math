module Combinatorics where
import Data.List hiding ( nub )

len = genericLength

------------------------------------------------------------------------
-- permutations

-- factorial function
fact :: Integer -> Integer
fact n = product [1..n] -- n!

-- does factorial actually compute number of permutations?
comparePermutations =
  [ len (permutations [1..n]) == fact n
  | n <- [0..10]
  ]

------------------------------------------------------------------------
-- combinations

-- chooses k elements from a given list
choose :: [a] -> Integer -> [[a]]
_      `choose` 0         = [[]]
[]     `choose` k | k > 0 = []
(x:xs) `choose` k | k > 0 = [ x:as | as <- xs `choose` (k-1) ]
                         ++ (xs `choose` k)

-- over function ("choose" in English)
over :: Integer -> Integer -> Integer
n `over` k = fact n `div` (fact (n-k) * fact k)

-- does "over" actually compute number of combinations?
compareCombinations =
  [ len ([1..n] `choose` k) == n `over` k
  | n <- [0..10]
  , k <- [0..n]
  ]

------------------------------------------------------------------------
-- Pascal's Triangle

-- all rows of Pascal's Triangle
pascal :: [[Integer]]
pascal = iterate next [1]

-- computing next row of Pascal's triangle, given previous row
next :: [Integer] -> [Integer]
next xs = [1] ++ zipWith (+) xs (tail xs) ++ [1]

-- does Pascal's Triangle actually compute the "over" function?
comparePascal =
  [ xs == [ n `over` k | k <- [0..n] ]
  | (xs,n) <- take 50 pascal `zip` [0..]
  ]

------------------------------------------------------------------------
-- Birthday problem

birthday :: Int -> Integer
birthday n = (good * 100) `div` total -- percentage
 where
  bad   = product (take n [365,364..])
  good  = total-bad
  total = product (take n [365,365..]) -- 365^n

------------------------------------------------------------------------
-- Dividing into groups

-- divide into groups where the order of the groups matters
divide :: Eq a => [Integer] -> [a] -> [[[a]]]
divide []     xs = [[]]
divide (k:ks) xs = [ g:gs | g <- xs `choose` k, gs <- divide ks (xs \\ g) ]

-- divide into groups where the order does not matter
divideGroups :: Ord a => [Integer] -> [a] -> [[[a]]]
divideGroups ks xs = nub (map sort (divide ks xs))

{-
-- try these:

-- how many ways to divide 10 people into 3 groups of sizes 4,3,3 
> length (divide [4,3,3] [1..10])
4200

-- how many ways to divide 10 people into 3 groups of sizes 4,3,3, and the order does not matter
> length (divideGroups [4,3,3] [1..10])
2100

-- how many ways to divide 12 people into 5 groups of sizes 3,3,2,2,2 
> length (divide [3,3,2,2,2] [1..12])
1663200

-- how many ways to divide 12 people into 5 groups of sizes 3,3,2,2,2, and the order does not matter
> length (divideGroups [3,3,2,2,2] [1..12])
138600

-}

------------------------------------------------------------------------
-- The Mean Exam Problem

{-
There is a mean teacher in discrete mathematics. He has 40 students.

He is divising an exam that works as follows. He makes 40 boxes that he
places in a row in a room. In each box, he puts a piece of paper with the
name of one student. Each student appears in one box, and each box has one
name.

Then, he calls in each student, one by one. Each student is allowed to open 20
boxes, in an order of their own choosing. After they open a box, they have to
check if their name is in that box. If the student finds their name in any of
the 20 boxes they are allowed to open, that student gets one point.

After they have opened 20 boxes, they have to leave the room, and the teacher
restores the room to its original condition. The students are allowed to talk
to each other before the exam starts, but they will not be able to communicate
with each other during the exam.

Here is the catch: The students will only pass the exam if EVERYONE gets a point.
In other words, only if everyone manages to find their name in one of the 20
boxes they open, will they succeed.

---

This problem is actually known as the 100 prisoner's problem, originally devised
by a Danish computer scientist, Peter Bro Miltersen.

Here are some links worth reading, where also the solution is discussed:

https://en.wikipedia.org/wiki/100_prisoners_problem

http://datagenetics.com/blog/december42014/index.html

http://puzzling.stackexchange.com/questions/16/100-prisoners-names-in-boxes

-}

{-
We modelled this problem using bijection graphs, or just "bijections". A
bijection graph is a directed graph where each node has exactly one incoming
and one outgoing arrow.

Once all students/prisoners have gotten a number, the boxes with names (numbers)
in them can be seen as a bijection graph: The boxes are the nodes, and their
contents tell us to which other box they point.
-}

-- Here is some Haskell code that computes the probabilities

-- total computes the total number of bijection graphs with n nodes. Every node
-- has to point to some unique node; just a permutation.
total :: Integer -> Integer
total n = fact n

-- fullCycles computes the number of bijection graphs of size k that are full
-- cycles, meaning the graph consists of one big cycle.
-- This is (k-1)! because: We first pick any node v, which must lie on the cycle.
-- After that, we have (k-1)! possibilities of ordering the rest of the nodes
-- that come after v, in that order.
fullCycles :: Integer -> Integer
fullCycles k = fact (k-1)

-- hasCycle computes the number of graphs with n nodes that contain a cycle
-- of size k (here, k >= n/2).
-- We compute the answer by combining the following choices:
-- First, we have to choose which k nodes are going to participate in the cycle,
-- which we can do in (n `over` k) ways.
-- Second, we have to make a full cycle out of these nodes, which we can do in
-- fullCycles k ways.
-- Third, we have to make the rest of the (n-k) nodes point to each other, which
-- we can do in (n-k)! ways.
hasCycle :: Integer -> Integer -> Integer
hasCycle n k = (n `over` k) * fullCycles k * fact (n-k)

-- bad computes the number of graphs with n nodes where the student's strategy
-- will fail. These are the graphs that have a cycle that is larger than n/2.
-- We just sum up all the possibilities. (There are no overlapping possibilities
-- because there can only be one cycle > n/2 in a graph with n nodes.)
bad :: Integer -> Integer
bad n = sum [ hasCycle n k | k <- [(n`div`2)+1..n] ]

-- good computes the number of graphs with n nodes where the student's strategy
-- will succeed.
good :: Integer -> Integer
good n = total n - bad n

-- success computes the probability of succeeding: good / total.
-- success  40 ~= 0.32
-- success 100 ~= 0.31
-- So, a success rate of ~31%. Not bad!
success :: Integer -> Double
success n = fromInteger (good n) / fromInteger (total n)

------------------------------------------------------------------------
-- the standard nub function is stupid

nub :: Ord a => [a] -> [a]
nub = map head . group . sort

------------------------------------------------------------------------

