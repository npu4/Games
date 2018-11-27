module Secret(
 getSecretNumber
)where
import Data.List
import System.Random

getSecretNumber :: IO String
getSecretNumber = do
    d1 <- randomElement [0..9]
    d2 <- randomElement . delete d1 $ [0..9]
    d3 <- randomElement $ [0..9]\\[d1,d2]
    d4 <- randomElement $ [0..9]\\[d1,d2,d3]
    return $ show d1 ++ show d2 ++ show d3 ++ show d4
    
randomElement :: [a] -> IO a
randomElement xs = do
    i<- randomRIO (0, length xs - 1)
    return $ xs !! i
