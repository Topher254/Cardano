data Chain = 
    GenesisBlock
    | Block Chain Txs
type Txs = Int

chain1 = Block GenesisBlock 2

chain2 = Block chain1 4 --binding

chain2' = Block (Block GenesisBlock 2) 4

chainLength :: Chain -> Int
chainLength GenesisBlock = 0
chainLength (Block c _) = chainLength c + 1

-- GenesisBlock :: Chain txs 

-- anotherChain  :: Chain -> Int
anotherChain =  Block (Block GenesisBlock 1) 2

-- aList :: [Int]
-- aList = 2: (1 : [])

emptyList = []
emptyListw = 2: (3:(6:[]))

-- g :: Int -> Int