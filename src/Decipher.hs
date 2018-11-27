module Decipher(
  decipher
)where

decipher :: String -> Int -> IO Int
decipher s n = do
  putStr $ "Попытка номер " ++ show n ++ ": "
  try <- getLine
  if try == s then
    return n
  else do
    putStrLn $ "Быков: " ++ bulls s try ++ ", коров: " ++ cows s try ++ ".\n"
    decipher s $ n + 1s

bulls :: String -> String -> String
bulls [s1, s2, s3, s4] [t1, t2, t3, t4] =
  show . length . filter (\c -> c == True) $ 
    [s1 == t1, s2 == t2, s3 == t3, s4 == t4]
bulls _ _                               = "0"

cows :: String -> String -> String
cows [s1, s2, s3, s4] [t1, t2, t3, t4] =
  show . length . filter (\c -> c == True) $ 
    [s1 == t2, s1 == t3, s1 == t4, 
     s2 == t1, s2 == t3, s2 == t4,
     s3 == t1, s3 == t2, s3 == t4,
     s4 == t1, s4 == t2, s4 == t3]
cows _ _                               = "0"
