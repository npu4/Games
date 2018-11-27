module GameXO(
  xo
)where
import TakingSymbols
import MovingXO

xo::IO()
xo = do
    putStrLn $  "Мы по очереди будем ставить на свободные клетки поля 3х3 знаки (один всегда крестики, другой всегда нолики).\n"++
                "Первый, выстроивший в ряд 3 своих фигуры по вертикали, горизонтали или диагонали, выигрывает. Первый ход\n"    ++
                "делает игрок, ставящий крестики.\n"                                                                            ++
                "Начнём."                                                                                                       ++
                "Выбери, что ты будешь ставить в клетки:\n"                                                                     ++
                "X - крестики\n"                                                                                                ++
                "\tили\n"                                                                                                       ++
                "0 - нолики\n"                                                                                                  ++
                "Напиши свой выбор. Учти, что X нужно писать заглавный из латинского алфавита.\n"
    (sP, sC, playerFirst) <- takingSymbols
    putStrLn $  "Чтобы сделать ход, напиши номер ячейки, куда хочешь поставить " ++ sP ++ "."
    let cell1 = " "
        cell2 = " "
        cell3 = " "
        cell4 = " "
        cell5 = " "
        cell6 = " "
        cell7 = " "
        cell8 = " "
        cell9 = " "
    if playerFirst then do
        movingPlayer sC sP cell1 cell2 cell3 cell4 cell5 cell6 cell7 cell8 cell9
    else do
        movingComputer sC sP cell1 cell2 cell3 cell4 cell5 cell6 cell7 cell8 cell9
