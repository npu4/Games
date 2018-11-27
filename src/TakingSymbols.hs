module TakingSymbols(
  takingSymbols
)where

takingSymbols::IO(String,String,Bool)
takingSymbols = do
    symbolOP <- getLine
    let symbolOfPlayer = take 1 symbolOP
    if symbolOfPlayer == "X" then do
        let symbolOfComputer = "0"
            whoFirst = True
        return(symbolOfPlayer, symbolOfComputer, whoFirst)
    else do
        if symbolOfPlayer == "0" then do
            let symbolOfComputer = "X"
                whoFirst = False
            return(symbolOfPlayer, symbolOfComputer, whoFirst)
        else do
            putStrLn $  "Ты опечатался или намеренно написал не то, что я просил.\n"                    ++
                        "В любом случае, я буду пользоваться ноликами, а ты тем, что написал. \n"       ++
                        "\"Сам спёк - сам и кушай!\" (c) Вовка в Тридевятом царстве"
            let symbolOfComputer = "0"
                whoFirst = True
            return(symbolOfPlayer, symbolOfComputer, whoFirst)
