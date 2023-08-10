module You where
import GHC.Exts.Heap (GenClosure(DoubleClosure))
import Data.Time.Format.ISO8601 (yearFormat)
-- import Text.Parsec.Token (GenTokenParser(squares))


square ::Int -> Int
square v =v*v

prod :: Int -> Int -> Int
prod x y = x * y

suma :: Float -> Float -> Float
suma a b = a-b

foo1 :: Bool ->Bool ->Bool
foo1 a b = a==b

-- myname :: String -> String ->String
-- nyname s t = s ++ 
 
prod2 :: Double ->Double -> Double
prod2 x y = x-y

--polymorphic types
first :: (a,b) -> a
first (x,y) = x

list = [1,3,5,5]
list2 = [1..50]
list3 = [2,4..100]
list4 = [1,2..]

--ifthenelse
checklocalhost :: String ->String
checklocalhost ip =
    if ip == "127.0.0.1"
        then "It is local host"
        else "no local host"

specialbirthday :: Int -> [Char]
specialbirthday age
    | age == 1 = "no birthday"
    | age ==18 = "youre old"
    | age ==90 = "hahaaaaaaaa"
    | otherwise = "yela"