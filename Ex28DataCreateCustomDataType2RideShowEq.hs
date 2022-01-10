import Data.List
import System.IO

data ClothesSize = XS | S | M | L | XL

instance Show ClothesSize where
    show XS = "extra small"
    show S = "small"
    show M = "medium"
    show L = "large"
    show XL = "extra large"

instance Eq ClothesSize where
    XS == XS = True
    S == S = True
    M == M = True
    L == L = True
    XL == XL = True
    _ == _ = False

isAvailable:: ClothesSize -> [ClothesSize] -> Bool
isAvailable size list = size `elem` list

myList = [M, L, XL]

main = do
    print(show L)
    putStrLn("Is small size availabe: " ++ show (isAvailable S myList))
    putStrLn("Is medium size availabe: " ++ show (isAvailable M myList))

