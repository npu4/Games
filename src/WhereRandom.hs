module WhereRandom(
    whereR
)where

whereR :: Int -> IO(String)
whereR x = do
    case x of
         0 -> return ("Кот в пальто ")
         1 -> return ("Кот в пальто ")
         2 -> return ("Хомячок ")
         3 -> return ("Плюшевый медведь ")
         4 -> return ("Кот в сапогах ")
         5 -> return ("Белоснежка ")
         6 -> return ("Дракон ")
         7 -> return ("Слонёнок ")
         8 -> return ("Разбойники ")
         9 -> return ("Рой пчёл ")
         10 -> return ("Кот в пальто ")
