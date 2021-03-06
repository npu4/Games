module BullsCows(
    bullscows
)where
import SecretNumber
import Decipher

bullscows :: IO ()
bullscows = do
    putStrLn $  "░░░░░█▄░░░░░░▄█░░░░░░░░░░░░░░░░░░░░░ \n"   ++
                "░░░░░█▀█░░░░█▀█░░░░░░░░░░░░░░░░░░░░░ \n"   ++
                "░▄▀▀██▄█▄▄▄▄█▄██▀▀▄░░░░░░░░░░░░░░░░░ \n"   ++
                "▀▀▀▀░█▄░░░░░░▄█░▀▀▀▀░░░░░░░░░░░░░░░░ \n"   ++
                "░░░▄▀░▄█░░░▄▀░░▀▄░░░░░░░░░░░░░░░░░░░ \n"   ++
                "░░░▀▄░░█░░░▀▄▀░▄▀▀▀▀▀▀▀████████▀▀▄░░ \n"   ++
                "░░░░░█▀░░░░░░▀█░░░░░░░░░░░█████░░░█░ \n"   ++
                "░░░▄▄█▄▄▄▄▄▄▄▄█▄░░███▄▄░░░▀▀███░░░█░ \n"   ++
                "░░░█░▄░░░░░░░▄░█░░█████▄░░░░░▀█░░░█░ \n"   ++
                "░░░███░░░░░░░███░███████░░░░░▄█░░░█░ \n"   ++
                "░░░█░░░░░░░░░░░█░▀██████░░░████░░█░░ \n"   ++
                "░░░▀▀▀▀▀████▀▀▀▀░░░▀▀▀▀░░░▄████░░█▄░ \n"   ++
                "░░░░░░░░█████▄░░░░▄▄▄░░░▄██████░░██░ \n"   ++
                "░░░░░░░░█████▀░░░░████░░░▀▀▀▀▀█░░███ \n"   ++
                "░░░░░░░░█░░░░░░░▄████████▄░░░░█░░░▀░ \n"   ++
                "░░░░░░░░█▄░░▄▄▄▄███████████▄▄▄█░░░░░ \n"   ++
                "░░░░░░░░██░░█░░░█▄▄▄▄▄▄▄█░███░░░░░░░ \n"   ++
                "░░░░░░░░██░░█░░░░▀░▀░▀░▀░░███░░░░░░░ \n"   ++
                "░░░░░░░▄██▄▄█░░░░░░░░░░░░░███▄▄░░░░░"
    secret  <- getSecretNumber
    putStrLn "Загадано четырёхзначное число с неповторяющимися цифрами\n"
    n       <- decipher secret 1
    putStrLn $ "Вы отгадали загаданное число за " ++ show n ++ " попыток.\n"
