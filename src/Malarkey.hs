module Malarkey(
    malarkey
)where
import WhoRandom
import WithWhomRandom
import WhenRandom
import WhereRandom
import DoingRandom
import System.Random 

malarkey :: IO ()
malarkey = do
    putStrLn $  "Смысл игры в том, что мы с тобой должны поочереди отвечать на вопросы\n"                           ++
                "\"Кто?\", \"Когда?\", \"Что делал?\" и тому подобное, но каждый не знает, что написал другой,\n"   ++
                "поэтому ответы будут несвязные. В итоге должна получиться смешная \"чепуха\".\n"                   ++
                "Прошу тебя отвечать на вопрос \"Кто?\" с заглавной буквы, а на все остальные с маленькой.\n"       ++
                "Тогда ответ будет выглядеть гармонично с точки зрения написания предложения.\n"                    ++
                "Попробуем. Ты начинаешь!\n"                                                                        ++
                "Кто?"
    mWho <- getLine
    
    -- с кем
    numOfWithWhomWho <- randomRIO (0, 10)
    randWithWhom <- withWhomR numOfWithWhomWho
    
    putStrLn "Где?"
    mWhere <- getLine
    
    -- Когда
    numOfWhen <- randomRIO (0, 10)
    randWhen <- whenR numOfWhen
    
    putStrLn "Что делали?"
    mDo <- getLine
    
    putStrLn $  "Вот какая у нас получилась \"чепуха\":\n"                  ++ 
                mWho ++ randWithWhom ++ mWhere ++ randWhen ++ mDo ++ "."    ++
                "\n"                                                        ++
                "Поменяемся? Теперь я начну."
    
    -- Кто
    numOfWho <- randomRIO (0, 10)
    randWho <- whoR numOfWho
    
    putStrLn "С Кем?"
    mWithWhom <- getLine
    
    -- Где
    numOfWhere <- randomRIO (0, 10)
    randWhere <- whereR numOfWhere
    
    putStrLn "Когда?"
    mWhen <- getLine
    
    -- Что делали
    numOfDo <- randomRIO (0, 10)
    randDo <- doR numOfDo
    
    putStrLn $ "Вот какая у нас получилась \"чепуха\":\n" ++ randWho ++ mWithWhom ++ randWhere ++ mWhen ++ randDo
