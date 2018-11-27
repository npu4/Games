module EndOfXO(
  isEnd
)where

isEnd :: String->String->String->String->String->String->String->String->String -> IO(Bool)
isEnd a1 a2 a3 a4 a5 a6 a7 a8 a9 = do
    if (a1 == a2)&&(a1 == a3)&&(a1 /= " ") || (a4 == a5)&&(a4 == a6)&&(a4 /= " ") || (a7 == a8)&&(a7 == a9)&&(a7 /= " ") ||
       (a1 == a4)&&(a1 == a7)&&(a1 /= " ") || (a2 == a5)&&(a2 == a8)&&(a2 /= " ") || (a3 == a6)&&(a3 == a9)&&(a3 /= " ") ||
       (a1 == a5)&&(a1 == a9)&&(a1 /= " ") || (a3 == a5)&&(a3 == a7)&&(a3 /= " ") then do
           return True
    else return False
        
