module MovingXO(
  movingPlayer,
  movingComputer
)where
import PlayingField
import EndOfXO

movingPlayer :: String->String->String->String->String->String->String->String->String->String->String -> IO()
movingPlayer bx ax a1 a2 a3 a4 a5 a6 a7 a8 a9 = do
    stop <- standOff a1 a2 a3 a4 a5 a6 a7 a8 a9
    if stop then do
        field a1 a2 a3 a4 a5 a6 a7 a8 a9
        putStrLn "Ничья!"
    else do
        end <- isEnd a1 a2 a3 a4 a5 a6 a7 a8 a9
        if end then do
            field a1 a2 a3 a4 a5 a6 a7 a8 a9
            putStrLn "Я выйграл!"
        else do
            field a1 a2 a3 a4 a5 a6 a7 a8 a9
            putStrLn "Твой ход:\n"
            move <-getLine
            let m = read $ take 1 move
            case m of
                1 ->    if a1 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax ax a2 a3 a4 a5 a6 a7 a8 a9
                2 ->    if a2 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 ax a3 a4 a5 a6 a7 a8 a9
                3 ->    if a3 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 a2 ax a4 a5 a6 a7 a8 a9
                4 ->    if a4 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 a2 a3 ax a5 a6 a7 a8 a9
                5 ->    if a5 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 a2 a3 a4 ax a6 a7 a8 a9
                6 ->    if a6 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 a2 a3 a4 a5 ax a7 a8 a9
                7 ->    if a7 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 a2 a3 a4 a5 a6 ax a8 a9
                8 ->    if a8 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 a2 a3 a4 a5 a6 a7 ax a9
                9 ->    if a9 /= " " then do
                            putStrLn "Ты жульничаешь! Я не буду с тобой играть!"
                        else movingComputer bx ax a1 a2 a3 a4 a5 a6 a7 a8 ax

         
movingComputer :: String->String->String->String->String->String->String->String->String->String->String -> IO()
movingComputer cC cP c1 c2 c3 c4 c5 c6 c7 c8 c9 = do
    stop <- standOff c1 c2 c3 c4 c5 c6 c7 c8 c9
    if stop then do
        field c1 c2 c3 c4 c5 c6 c7 c8 c9
        putStrLn "Ничья!"
    else do
        end <- isEnd c1 c2 c3 c4 c5 c6 c7 c8 c9
        if end then do
            field c1 c2 c3 c4 c5 c6 c7 c8 c9
            putStrLn "Ты выйграл!"
        else do
            (cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,dIW) <- firstRule cC c1 c2 c3 c4 c5 c6 c7 c8 c9
            if dIW == True then do
                movingPlayer cC cP cr1 cr2 cr3 cr4 cr5 cr6 cr7 cr8 cr9
            else do
                (cs1,cs2,cs3,cs4,cs5,cs6,cs7,cs8,cs9) <- putInSome cC c1 c2 c3 c4 c5 c6 c7 c8 c9
                movingPlayer cC cP cs1 cs2 cs3 cs4 cs5 cs6 cs7 cs8 cs9

    
    
choice :: Int->String->String->String->String->String->String->String->String->String->String -> IO(String, String, String, String, String, String, String, String, String)
choice x ax a1 a2 a3 a4 a5 a6 a7 a8 a9 = do
    case x of
         1 -> return(ax, a2, a3, a4, a5, a6, a7, a8, a9)
         2 -> return(a1, ax, a3, a4, a5, a6, a7, a8, a9)
         3 -> return(a1, a2, ax, a4, a5, a6, a7, a8, a9)
         4 -> return(a1, a2, a3, ax, a5, a6, a7, a8, a9)
         5 -> return(a1, a2, a3, a4, ax, a6, a7, a8, a9)
         6 -> return(a1, a2, a3, a4, a5, ax, a7, a8, a9)
         7 -> return(a1, a2, a3, a4, a5, a6, ax, a8, a9)
         8 -> return(a1, a2, a3, a4, a5, a6, a7, ax, a9)
         9 -> return(a1, a2, a3, a4, a5, a6, a7, a8, ax)

         
         
firstRule :: String->String->String->String->String->String->String->String->String->String->IO(String, String, String, String, String, String, String, String, String, Bool)
firstRule ax a1 a2 a3 a4 a5 a6 a7 a8 a9 = do
    if ((a2 == a3)&&(a2 /= " ") || (a4 == a7)&&(a4 /= " ") || (a5 == a9)&&(a5 /= " ")) && a1 == " " then do                                    --1
        return(ax, a2, a3, a4, a5, a6, a7, a8, a9, True)
    else do 
        if ((a1 == a3)&&(a1 /= " ") || (a5 == a8)&&(a5 /= " ")) && a2 == " " then do                                              --2
            return(a1, ax, a3, a4, a5, a6, a7, a8, a9, True)
        else do 
            if ((a1 == a2)&&(a1 /= " ") || (a5 == a7)&&(a5 /= " ") || (a6 == a9)&&(a6 /= " ")) && a3 == " " then do                            --3
                return(a1, a2, ax, a4, a5, a6, a7, a8, a9, True)
            else do
                if ((a1 == a7)&&(a1 /= " ") || (a5 == a6)&&(a5 /= " ")) && a4 == " " then do                                      --4
                    return(a1, a2, a3, ax, a5, a6, a7, a8, a9, True)
                else do 
                    if ((a4 == a6)&&(a4 /= " ") || (a2 == a8)&&(a2 /= " ") || (a1 == a9)&&(a1 /= " ") || (a3 == a7)&&(a3 /= " ")) && a5 == " " then do      --5
                        return(a1, a2, a3, a4, ax, a6, a7, a8, a9, True)
                    else do
                        if ((a3 == a9)&&(a3 /= " ") || (a4 == a5)&&(a4 /= " ")) && a6 == " " then do                              --6
                            return(a1, a2, a3, a4, a5, ax, a7, a8, a9, True)
                        else do
                            if ((a1 == a4)&&(a1 /= " ") || (a8 == a9)&&(a8 /= " ") || (a3 == a5)&&(a3 /= " ")) && a7 == " " then do            --7
                                return(a1, a2, a3, a4, a5, a6, ax, a8, a9, True)
                            else do
                                if ((a2 == a5)&&(a2 /= " ") || (a7 == a9)&&(a7 /= " ")) && a8 == " " then do                      --8
                                    return(a1, a2, a3, a4, a5, a6, a7, ax, a9, True)
                                else do    
                                    if ((a1 == a5)&&(a1 /= " ") || (a7 == a8)&&(a7 /= " ") || (a3 == a6)&&(a3 /= " ")) && a9 == " " then do    --9
                                        return(a1, a2, a3, a4, a5, a6, a7, a8, ax, True)  
                                    else do
                                        return(a1, a2, a3, a4, a5, a6, a7, a8, a9, False)


putInSome :: String->String->String->String->String->String->String->String->String->String->IO(String, String, String, String, String, String, String, String, String)
putInSome ax a1 a2 a3 a4 a5 a6 a7 a8 a9 = do
    if a5 == " " then do                                    
        return(a1, a2, a3, a4, ax, a6, a7, a8, a9)
    else do 
        if a1 == " " then do                                           
            return(ax, a2, a3, a4, a5, a6, a7, a8, a9)
        else do 
            if a3 == " " then do                       
                return(a1, a2, ax, a4, a5, a6, a7, a8, a9)
            else do
                if a7 == " " then do                                     
                    return(a1, a2, a3, a4, a5, a6, ax, a8, a9)
                else do 
                    if a9 == " " then do                           
                        return(a1, a2, a3, a4, a5, a6, a7, a8, ax)
                    else do
                        if a2 == " " then do         
                            return(a1, ax, a3, a4, a5, a6, a7, a8, a9)
                        else do
                            if a4 == " " then do                   
                                return(a1, a2, a3, ax, a5, a6, a7, a8, a9)
                            else do    
                                if a6 == " " then do  
                                    return(a1, a2, a3, a4, a5, ax, a7, a8, a9)  
                                else do --8
                                    return(a1, a2, a3, a4, a5, ax, a7, ax, a9) 

                                    
standOff :: String->String->String->String->String->String->String->String->String -> IO(Bool)
standOff a1 a2 a3 a4 a5 a6 a7 a8 a9 = do
    if (a1/=" ")&&(a2/=" ")&&(a3/=" ")&&(a4/=" ")&&(a5/=" ")&&(a6/=" ")&&(a7/=" ")&&(a8/=" ")&&(a9/=" ") then return True
    else return False
