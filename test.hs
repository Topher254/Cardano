module Test where
    -- import prelude 
-- import Data.length
-- import length
-- main = putStrLn "Hello World"

    -- not' :: Bool -> Bool
    -- not' x = False
    -- [1,2]

ifthenelse :: Bool -> a -> a -> a
ifthenelse True t _ = t
ifthenelse False _ e = e

-- mapMaybe :: (a->b) ->  Maybe a -> b
-- mapMaybe _Nothing = _Nothing
-- mapMaybe f (just a) = Just (f a)
swap :: (a,b) -> (b,a)
swap (a,b) = (b,a)

length :: [a] -> Int
length []  = 0
-- length (_ : xs) = 1 +length 

type Table k v = [(k,v)]
-- interface
-- create an empty table, inserta and delete
-- functional data structu res are persistesnt
empty :: Table k v
empty = []

insert :: k -> v -> Table k v -> Table k v
insert k v xs = (k,v) :xs

delete :: Eq k => k -> Table k v -> Table k v
delete _ [] = []
delete k ((k', v) : kvs)
    | k' == k = delete k kvs
    -- recursively delete k from the table
    | otherwise = (k', v) : delete k kvs
    -- not complete


-- newtype Table k v =mkTable [(k, v)]
-- empty :: Table  k v
-- empty = Table []

-- transaction 
data Transaction  = Transaction Amount Account Account 
    deriving(Show, Eq)

type Amount = Int
type Account = String
--  Transaction == 200 "sarota" 

-- to
-- and fro
-- updating an account table with a transaction


-- type Accounts = Table Account A mount
-- -- such as in a bank


-- processTransaction :: Transaction -> Accounts -> Account





data Tree a = Leaf a | Node (Tree a) (Tree a)
    deriving Show

tree :: Tree Int
tree = Node (Leaf 7) (Node (Leaf 4)(Leaf 9))

flatten :: Tree a -> [a]
flatten (Leaf a) = [a]
flatten (Node l r) = flatten l ++ flatten r --left and right child

height :: Tree a -> Int
height (Leaf _) = 0
height(Node l r) = 1 + max(height l) (height r)

height :: Tree a -> Int
height (Leaf _) = 0
height(Node l r) = 1 + max(height l) (height r)