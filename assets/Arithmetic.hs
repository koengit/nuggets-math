import Data.List

{-

Here are some examples of what to try out:

  -- solving the gcd problem
  printEuclid 3042 4485
  
  -- solving the pulverizer
  printPulverizer 3042 4485

  -- solving a Diophantine equation
  printDiophant 14 21 30

  -- solving a system of congruences using the Chinese remainder theorem
  printChinese [(2,3),(3,5),(2,7)]

-}

----------------------------------------------------------------
-- Euclid's method

-- This function generates the table you compute when you
-- calculate the gcd using Euclid's method.

euclid :: Integer -> Integer -> [(Integer,Integer)]
euclid a b = takeUntil done (iterate step (a,b))
 where
  -- we are done when one side is 0;
  -- the other side will be the gcd
  done (a,b) = a == 0 || b == 0

  -- we subtract the smaller value from the larger value
  step (a,b)
    | a <= b    = (a   , b-a)
    | otherwise = (a-b , b  )

printEuclid :: Integer -> Integer -> IO ()
printEuclid a b =
  do printTable ["a","b"] [ [a,b] | (a,b) <- abs ]
     putStrLn ("So, gcd(" ++ show a ++ "," ++ show b ++") = " ++ show d)
 where
  abs   = euclid a b
  (p,q) = last abs  
  d     = if p == 0 then q else p

----------------------------------------------------------------
-- Pulverizer (Bezout's method)

-- This function generates the table you compute when you
-- calculate the Pulverizer / Bezout's identity.
-- The table has a lot in common with the table from Euclid;
-- if you do this by hand, first compute Euclid's table, and
-- then fill in the rest.

pulverizer :: Integer -> Integer -> [(Integer,Integer,Integer,Integer,Integer,Integer)]
pulverizer a b = takeUntil done (iterate step (1,0,a,b,0,1))
 where
  -- we could compute this using Euclid's method as well
  d = gcd a b
 
  -- we are done when one side is d (the gcd of x and y);
  -- the u and v on that side are the answer we are looking for
  done (_,_,a,b,_,_) = a == d || b == d

  -- we subtract the smaller value from the larger value,
  -- and also subtract the respective (u,v)-pair from each other
  step (u1,v1,a,b,u2,v2)
    | a <= b    = (u1    , v1    , a   , b-a , u2-u1 , v2-v1)
    | otherwise = (u1-u2 , v1-v2 , a-b , b   , u2    , v2   )

printPulverizer :: Integer -> Integer -> IO ()
printPulverizer a b =
  do printTable ["u","v","a","b","u","v"]
                [ [u,v,a,b,u',v'] | (u,v,a,b,u',v') <- uvabuvs ]
     putStrLn ("So, " ++ show a ++ "u + " ++ show b ++ "v = " ++ show d
                      ++ ", when u=" ++ show u ++ " and v=" ++ show v)
 where
  uvabuvs           = pulverizer a b
  (u1,v1,p,q,u2,v2) = last uvabuvs 
  d                 = gcd p q
  (u,v)             = if p == d then (u1,v1) else (u2,v2)

-- a handy function that actually only computes u and v
-- and also works for negative numbers
pulver :: Integer -> Integer -> (Integer,Integer)
pulver a b = (signum a * u, signum b * v)
 where
  (u1,v1,p,q,u2,v2)    = last (pulverizer (abs a) (abs b))
  (u,v) | p == gcd a b = (u1,v1)
        | otherwise    = (u2,v2)

-- a fast way to compute the pulverizer, works for large numbers
pul :: Integer -> Integer -> (Integer, Integer)
pul a b = go 1 0 a b 0 1
 where
  go u1 v1 1 _ _  _  = (u1,v1)
  go _  _  _ 1 u2 v2 = (u2,v2)
  go u1 v1 _ 0 _  _  = (u1,v1)
  go _  _  0 _ u2 v2 = (u2,v2)
  go u1 v1 a b u2 v2
    | a > b          = go u2 v2 b a u1 v1
    | otherwise      = go u' v' m a u1 v1
   where
    d  = b `div` a
    m  = b `mod` a
    u' = u2 - d*u1
    v' = v2 - d*v1

----------------------------------------------------------------
-- solving a Diophantine equation

solveDiophant :: Integer -> Integer -> Integer -> Maybe (Integer,Integer)
solveDiophant a b c
  | d `divides` c = Just (u*c', v*c')
  | otherwise     = Nothing
 where
  -- compute gcd of a and b
  d = gcd a b
  
  -- divide the whole equation by d
  a' = a `div` d
  b' = b `div` d
  c' = c `div` d

  -- use pulverizer
  (u,v) = pulver a' b'

-- try the exercises:
-- printDiophant 14 21 30
-- printDiophant 9 15 21
printDiophant :: Integer -> Integer -> Integer -> IO ()
printDiophant a b c =
  do putStrLn ("Equation: "
             ++ show a ++ "x + "
             ++ show b ++ "y = "
             ++ show c
              )
     case solveDiophant a b c of
       Just (x,y) -> putStrLn ("Solution: x = " ++ show x ++ ", y = " ++ show y)
       Nothing    -> putStrLn "No solution!"

----------------------------------------------------------------
-- solving the chinese remainder theorem

-- solving a system of two congruences
solveChinese2 :: (Integer,Integer) -> (Integer,Integer) -> (Integer,Integer)
solveChinese2 (a,m1) (b,m2)
  | d > 1     = error ( show m1 ++ " and "
                     ++ show m2 ++ " have a common divisor "
                     ++ show d
                      )
  | otherwise = (x `mod` m, m) -- I use x `mod` m instead of x here,
                               -- because sometimes x is negative or very large 
 where
  d     = gcd m1 m2
  (u,v) = pulver m1 m2
  x     = a + u * (b-a) * m1
  m     = m1*m2
  
-- solving a system of n congruences
solveChinese :: [(Integer,Integer)] -> (Integer,Integer)
solveChinese [(a,m)]                = (a,m)
solveChinese ((a,m1):(b,m2):congrs) = solveChinese ((x,m) : congrs)
 where
  (x,m) = solveChinese2 (a,m1) (b,m2)

-- try Sun Tzu's problem:
-- printChinese [(2,3),(3,5),(2,7)]
printChinese :: [(Integer,Integer)] -> IO ()
printChinese congrs =
  do putStrLn "Congruences:"
     sequence_ [ putStrLn ("  x ≡ " ++ show a ++ " (mod " ++ show m ++ ")")
               | (a,m) <- congrs
               ]
     putStrLn ("Solution: x = " ++ show a ++ " + " ++ show m ++ "i")
 where
  (a,m) = solveChinese congrs

----------------------------------------------------------------
-- RSA cryptography

type Public  = (Integer, Integer) -- (N,e)
type Private = Integer            -- d

-- given two different prime numbers,
-- create the public key (N,e) and the private key d
createRSAKey :: Integer -> Integer -> (Public, Private)
createRSAKey p q
  | e*d `mod` m == 1 = ((n,e),d)
  | otherwise        = error "d is not e's multiplicative inverse! :-o"
 where
  n = p * q
  m = (p-1) * (q-1)
  e = 2^16 + 1
  (d0,_) = pul e m                                 -- computing multiplicative inverse d0
  d      = head (dropWhile (<0) (iterate (+m) d0)) -- making sure d is positive
  
type Message          = Integer
type EncryptedMessage = Integer

encrypt :: Public -> Message -> EncryptedMessage
encrypt (n,e) m = powerMod m e n -- (m^e) `mod` n

decrypt :: Public -> Private -> EncryptedMessage -> Message
decrypt (n,e) d m' = powerMod m' d n -- (m'^d) `mod` n

-- given two different prime numbers,
-- print what happens when the message "123" is encrypted and decrypted
printRSA :: Integer -> Integer -> IO ()
printRSA p q =
  do putStrLn ("-- RSA with p=" ++ show p ++ " and q=" ++ show q)
     putStrLn ("public key (N,e) = " ++ show pubKey)
     putStrLn ("(private key d = " ++ show privKey ++ ")")
     putStrLn "--"
     putStrLn ("message m = " ++ show m)
     putStrLn ("encrypt m  with (N,e): m' = m^e  (mod N): " ++ show m')
     putStrLn ("decrypt m' with (N,d): m  = m'^d (mod N): " ++ show m2)
 where
  (pubKey@(n,e),privKey@d) = createRSAKey p q

  m  = 123
  m' = encrypt pubKey m
  m2 = decrypt pubKey privKey m'

----------------------------------------------------------------
-- helper functions

-- checks if a divides b
divides :: Integer -> Integer -> Bool
a `divides` b = b `mod` a == 0

-- returns the elements of the list, up till and including the first element where p holds
takeUntil :: (a -> Bool) -> [a] -> [a]
takeUntil p [] = []
takeUntil p (x:xs)
  | p x        = [x]
  | otherwise  = x : takeUntil p xs

-- prints a nice table with headings and columns
printTable :: Show a => [String] -> [[a]] -> IO ()
printTable hs xss = putStr (unlines (map row tss))
 where
  tss     = hs : map (map show) xss
  n       = maximum (1 : [ length t | ts <- tss, t <- ts ])
  row     = concat . intersperse " | " . map align
  align t = replicate (n - length t) ' ' ++ t
  
-- powerMod
powerMod :: Integer -> Integer -> Integer -> Integer
powerMod x 0 m = 1
powerMod x n m
  | even n     = powerMod (x*x `mod` m) (n `div` 2) m
  | otherwise  = x * powerMod x (n-1) m `mod` m
