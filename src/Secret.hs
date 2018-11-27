module Secret(
  getSecretWord
)where
import System.Random
    
getSecretWord :: IO String
getSecretWord = do
    i<- randomRIO (0, 10)
    let word = secretWords i
    return word
    
secretWords :: Int -> String
secretWords x = case x of
         0  -> "конус"
         1  -> "сфера"
         2  -> "точка"
         3  -> "осина"
         4  -> "вишня"
         5  -> "дамба"
         6  -> "жатва"
         7  -> "капля"
         8  -> "мочка"
         9  -> "отзыв"
         10 -> "степь"
