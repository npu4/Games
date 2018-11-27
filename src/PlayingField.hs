module PlayingField(
  field 
)where

field:: String -> String -> String -> String -> String -> String -> String -> String -> String -> IO()
field c1 c2 c3 c4 c5 c6 c7 c8 c9 = do
    putStrLn $  "Номера клеток:\n"  ++
                "-1-|-2-|-3-\n"     ++
                "---+---+---\n"     ++
                "-4-|-5-|-6-\n"     ++
                "---+---+---\n"     ++
                "-7-|-8-|-9-"
    putStrLn $  "\nСостояние игрового поля на данный момент:\n" ++
                " " ++ c1 ++ " | " ++ c2 ++ " | " ++ c3 ++ "\n" ++
                "---+---+---\n"                                 ++
                " " ++ c4 ++ " | " ++ c5 ++ " | " ++ c6 ++ "\n" ++
                "---+---+---\n"                                 ++
                " " ++ c7 ++ " | " ++ c8 ++ " | " ++ c9 ++ "\n"
                      
                
