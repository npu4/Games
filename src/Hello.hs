module Hello(
    hello
)where

hello :: IO (String, Integer)
hello = do
    putStrLn "Привет! Я здесь, чтобы играть с тобой. Меня зовут Феликс. Напиши своё имя, пожалуйста, чтобы я знал, как обращаться к тебе."
    name <- getLine
    putStrLn $  "Приятно познакомиться, " ++ name ++ "! \n"                                         ++
                "Выбери, во что ты хочешь поирать со мной и напиши номер этой игры из списка:\n"    ++
                "\t1. Виселица\n"       ++
                "\t2. Самый Умный\n"    ++
                "\t3. Чепуха\n"         ++
                "\t4. Крестики-нолики"  ++
                "\t5. Быки и Коровы"
    typeofgame <- getLine 
    let numberofgame = read $ take 1 typeofgame
    return (name, numberofgame)
