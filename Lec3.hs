module Lec3 where

import Prelude hiding (fst, Eq)
import Text.Parsec (parse)
import Data.String (IsString)

fst :: (a, b) -> a
fst (y,r) = y

restrictedFst :: (Int,Int) -> Int
restrictedFst = fst

fst' :: (a,a) -> a
fst' = fst

foo1, foo2 :: (Int,Int) -> (Int,Int)
foo1 (x,y) = (x+1, y+1)
foo2 (x,y) = (y,x)

-- parse :: String -> a
-- parse "False" = False
 --returns an error

-- parse :: String -> Bool Int

{-class Eq a where
    (==) :: a-> a -> Bool
    (/=) :: a-> a -> Bool

instance Eq Bool where

    True == True = True
    False == False = False
    _ == _ = False

    x /= y not (x==y)

-}

sum :: [Int] -> Int
sum [] = 0
sum(x:xs) = x + sum xs

