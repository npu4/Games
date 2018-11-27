module Main where

import      Hello
import      TheCleverest
import      Malarkey
import      Gallow
import      GameXO
import      System.Environment

main :: IO ()
main = do
    args <- getArgs
    parseArgs args
    
parseArgs :: [String] -> IO()
parseArgs []        = letsPlayAGame
parseArgs y@(x:_)   = do
    case x of
         "--help"       -> usage
         "--version"    -> version
         _              -> letsPlayAGame
         
letsPlayAGame :: IO()
letsPlayAGame = do
    (name, number) <- hello
    case number of
         1 -> do    putStrLn $ name ++ ", твой выбор - игра "   ++ "\"Виселица\""
                    gallow
         2 -> do    putStrLn $ name ++ ", твой выбор - игра "   ++ "\"Самый Умный\""
                    clever
         3 -> do    putStrLn $ name ++ ", твой выбор - игра "   ++ "\"Чепуха\""
                    malarkey
         4 -> do    putStrLn $ name ++ ", твой выбор - игра "   ++ "\"Крестики-нолики\""
                    xo
         5 -> do    putStrLn $ name ++ ", твой выбор - игра "   ++ "\"Быки и Коровы\""
                    xo
         _ ->       putStrLn "Ошибка. Неверно указан номер игры."

usage :: IO()
usage = putStrLn usageStr

usageStr :: String
usageStr =  "Игра компьютера с именем Феликс с пользователем. \n"                                                   ++
            "Использование:\n"                                                                                      ++
            "   Введите любую строку, кроме \"--help\" и \"--version\", или не вводите ничего и игра начнётся.\n"   ++
            "   Дальше Феликс объяснит, что нужно делать.\n"

version :: IO()
version = putStrLn versionStr

versionStr :: String
versionStr =    " ╔══╦╗╔╦═══╦═══╦═══╗   ╔═══╦══╦╗  ╔╦═══╦══╗ \n"                    ++
                " ║╔═╣║║║╔═╗║╔══╣╔═╗║   ║╔══╣╔╗║║  ║║╔══╣╔═╝ \n"                    ++
                " ║╚═╣║║║╚═╝║╚══╣╚═╝║   ║║╔═╣╚╝║╚╗╔╝║╚══╣╚═╗ \n"                    ++
                " ╚═╗║║║║╔══╣╔══╣╔╗╔╝   ║║╚╗║╔╗║╔╗╔╗║╔══╩═╗║ \n"                    ++
                " ╔═╝║╚╝║║  ║╚══╣║║║    ║╚═╝║║║║║╚╝║║╚══╦═╝║ \n"                    ++
                " ╚══╩══╩╝  ╚═══╩╝╚╝    ╚═══╩╝╚╩╝  ╚╩═══╩══╝ \n"                    ++
                "SuperGames, playing with computer.\n"                              ++
                "Version 0.1\n"                                                     ++
                "(c) Puchkova Natalia Dmitrievna, 2018"
