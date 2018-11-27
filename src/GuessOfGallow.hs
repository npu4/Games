module GuessOfGallow(
  guess 
)where
import ImgOfGallow
    
guess :: String -> String -> Int -> IO()
guess secretWord wordOnScreen numOfErr = do
    isFinal <- allLettersAreRight wordOnScreen
    if isFinal then do
        putStrLn wordOnScreen
        putStrLn "Вы угадали загаданное слово! Поздравляю!"
    else do
        putStrLn $ "Ошибок: " ++ show numOfErr
        putStrLn wordOnScreen
        try <- getLine
        (iTIW,newWordOnScreen) <- isTryInWord try secretWord wordOnScreen
        if iTIW then do
            guess secretWord newWordOnScreen numOfErr
        else do
            img $ numOfErr + 1
            if numOfErr < 6 then
                guess secretWord newWordOnScreen $ numOfErr + 1
            else do
                putStrLn "Конец игры."
            

isTryInWord::String -> String -> String -> IO(Bool,String)
isTryInWord sTry sWord wOS = do
    let 
        letter1 = take 1 sWord
        letter2 = take 1 .drop 1 $ sWord
        letter3 = take 1 .drop 2 $ sWord
        letter4 = take 1 .drop 3 $ sWord
        letter5 = drop 4 $ sWord
    if sTry == letter1 then do
        let newwOS = letter1 ++ (drop 1 $ wOS)
        return (True,newwOS)
    else do
        if sTry == letter2 then do
            let newwOS = (take 1 wOS) ++ letter2 ++ (drop 2 $ wOS)
            return (True,newwOS)
        else do
            if sTry == letter3 then do
                let newwOS = (take 2 wOS) ++ letter3 ++ (drop 3 $ wOS) 
                return (True,newwOS)
            else do
                if sTry == letter4 then do
                    let newwOS = (take 3 wOS) ++ letter4 ++ (drop 4 $ wOS)
                    return (True,newwOS)
                else do
                    if sTry == letter5 then do
                        let newwOS = (take 4 wOS) ++ letter5 
                        return (True,newwOS)
                    else 
                        return (False,wOS)

                        
allLettersAreRight::String -> IO(Bool)
allLettersAreRight s = do
    let 
        letter1 = take 1 s
        letter2 = take 1 .drop 1 $ s
        letter3 = take 1 .drop 2 $ s
        letter4 = take 1 .drop 3 $ s
        letter5 = drop 4 $ s
    if letter1 == "_" then
        return (False)
    else do
        if letter2 == "_" then
            return (False)
        else do
            if letter3 == "_" then
                return (False)
            else do
                if letter4 == "_" then
                    return (False)
                else do
                    if letter5 == "_" then
                        return (False)
                    else do
                        return (True)
