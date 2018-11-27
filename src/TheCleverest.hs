module TheCleverest(
    clever
)where
import FinishOfTheCleverest

clever :: IO ()
clever = do
    putStrLn $  "░░░░░░░░░░░░░░░░▄▄████▄▄▄░░░░░░░░░░░░░░░ \n"   ++
                "░░░░░░░░░░▄▄▄██████████████▄▄▄░░░░░░░░░░ \n"   ++
                "░░░░░▄▄▄████████████████████████▄▄▄░░░░░ \n"   ++
                "▄▄█████████▀▀█████████████████████████▄▄ \n"   ++
                "░▀▀▀██▀▀▀░▄▄████████████████████████▀▀▀░ \n"   ++
                "░░░░██░░▀██████████████████████▀▀░░░░░░░ \n"   ++
                "░░░░██░░░░░░▀▀▀██████████▀▀▀░░░░░░░░░░░░ \n"   ++
                "░░░░██░░░███▄▄▄░░▀▀▀▀▀▀░░░▄▄███░░░░░░░░░ \n"   ++
                "░░░░██░░░████████▄▄▄▄▄▄████████░░░░░░░░░ \n"   ++
                "░░░░██░░░██░▀▀▀██████████▀▀▀░░█░░░░░░░░░ \n"   ++
                "░░░▄██░░░▀█░░░▄▄░░░░░░░░▄▄░░░▄█░░░░░░░░░ \n"   ++
                "░░░▀▀▀▀░░░█▄░░▀▀░░░░░░░░▀▀░░░█▀░░░░░░░░░ \n"   ++
                "░░░░░░░░░░▀█░░░░░░░░░░░░░░░░▄█░░░░░░░░░░ \n"   ++
                "░░░░░░░░░░░▀█░░░░▄▄▄▄▄▄░░░░▄█░░░░░░░░░░░ \n"   ++
                "░░░░░░░░░░░░▀█▄░░░▀▀▀▀░░░▄█▀░░░░░░░░░░░░ \n"   ++
                "░░░░░░░░░░░░░░▀██▄▄▄▄▄▄▄█▀░░░░░░░░░░░░░░ \n"   ++
                "░░░░░░░░░░░░░░░░░░▀▀▀▀▀░░░░░░░░░░░░░░░░░"
    putStrLn $  "Я буду задавать тебе вопросы, а ты должен отвечать на них цифрой правильного, на твой взгляд,\n"           ++
                "варианта ответа из четырёх предложенных. Всего 15 вопросов.\n"                                             ++
                "Первые 5 стоимостью 1 балл,\n"                                                                             ++
                "следующие пять - 3 балла,\n"                                                                               ++
                "следующие четыре - 5 баллов,\n"                                                                            ++
                "последний пятнадцатый - 10 баллов.\n"                                                                      ++
                "Итого суммарно можно получить 50 баллов.\n"                                                                ++    
                "Если ты ответишь неправильно, игра прекратится и я покажу, сколько баллов ты наберёшь к тому моменту.\n"   ++
                "Начнём."
    q1

        
q1::IO()
q1 = do
    putStrLn $  "1. Каким будет результат, если сложить наименьшее и наибольшее двузначные числа?\n"                        ++
                "\t1. 109\t2. 100\t3. 119\t4. 110"
    ansver1 <- getLine
    let ans1 = read ansver1
    if ans1 == 1 then do
        putStrLn "Правильно!"
        q2
    else do
        finish 1

        
q2::IO()
q2 = do
    putStrLn $  "2. Сколько в комнате кошек, если в каждом из четырех углов сидит по кошке, а напротив каждой кошки\n"      ++
                "сидит по кошке?\n"                                                                                         ++
                "\t1. 12\t2. 16\t3. 4\t4. 8"
    ansver2 <- getLine
    let ans2 = read ansver2
    if ans2 == 3 then do
        putStrLn "Правильно!"
        q3
    else do
        finish 2


q3::IO()
q3 = do
    putStrLn $  "3. Крышка стола имеет четыре угла. Один из них отпилили. Сколько углов стало?\n"                           ++
                "\t1. 3\t2. 4\t3. 5\t4. 6"
    ansver3 <- getLine
    let ans3 = read ansver3
    if ans3 == 3 then do
        putStrLn "Правильно!"
        q4
    else do
        finish 3


q4::IO()
q4 = do
    putStrLn $  "4. Сколько нужно сделать распилов, чтобы распилить бревно на 12 частей?\n"                                 ++
                "\t1. 11\t2. 12\t3. 10\t4. 6"
    ansver4 <- getLine
    let ans4 = read ansver4
    if ans4 == 1 then do
        putStrLn "Правильно!"
        q5
    else do
        finish 4
    
q5::IO()
q5 = do
    putStrLn $  "5. Говорят, что математика - царица всех наук, а царица математики - ...?\n"                               ++
                "\t1. Геометрия\t2. Арифметика\t\t3. Алгебра\t4. Тригонометрия"
    ansver5 <- getLine
    let ans5 = read ansver5
    if ans5 == 2 then do
        putStrLn "Правильно! У тебя уже есть 5 баллов! Неплохой результат! Не сдавайся!"
    else do
        finish 5
    
    
q6::IO()
q6 = do
    putStrLn $  "6. К единицам площади не относится...\n"                                                                   ++
                "\t1. Акр\t\t2. Десятина\t3. Ярд\t\t4. Гектар"
    ansver6 <- getLine
    let ans6 = read ansver6
    if ans6 == 3 then do
        putStrLn "Правильно!"
    else do
        finish 6
    
q7::IO()
q7 = do
    putStrLn $  "7. Какой знак нужно поставить между цифрами 7 и 8, чтобы получилось число больше 7, но меньше 8?\n"        ++
                "\t1. Запятую\t2. Двоеточие\t3. Плюс\t\t4. Черту дроби"
    ansver7 <- getLine
    let ans7 = read ansver7
    if ans7 == 1 then do
        putStrLn "Правильно!"
    else do
        finish 7
    
    
q8::IO()
q8 = do
    putStrLn $  "8. Сколько трехзначных чисел можно записать с помощью цифр 0,2,5?\n"                                       ++
                "\t1. 3\t2. 5\t3. 4\t4. 6"
    ansver8 <- getLine
    let ans8 = read ansver8
    if ans8 == 3 then do
        putStrLn "Правильно!"
    else do
        finish 8
    

q9::IO()
q9 = do
    putStrLn $  "9. Условный знак для обозначения чисел - это ...?\n"                                                       ++
                "\t1. Точка\t2. Цифра\t3. Тире\t\t4. Корень"
    ansver9 <- getLine
    let ans9 = read ansver9
    if ans9 == 2 then do
        putStrLn "Правильно!"
    else do
        finish 9


q10::IO()
q10 = do
    putStrLn $  "10. Кто из ученых сказал: \"Математику уже затем учить надо, что она ум в порядок приводит\"?\n"           ++
                "\t1. Ломоносов М.В.\t2. Лобачевский Н.И.\t3. Карл Гаусс\t\t4. Блез Паскаль"
    ansver10 <- getLine
    let ans10 = read ansver10
    if ans10 == 1 then do
        putStrLn "Правильно! У тебя уже есть 20 баллов! Хороший результат! Не сдавайся!"
    else do
        finish 10


q11::IO()
q11 = do
    putStrLn $  "11. Единица длины, появившаяся почти 900 лет назад, равная расстоянию от кончика носа короля Генриха I\n"  ++
                " до конца пальцев его вытянутой руки, называлась...?\n"                                                    ++
                "\t1. Фут\t\t2. Сажень\t3. Ярд\t\t4. Дюйм"
    ansver11 <- getLine
    let ans11 = read ansver11
    if ans11 == 4 then do
        putStrLn "Правильно!"
    else do
        finish 11


q12::IO()
q12 = do
    putStrLn $  "12. Этот термин в переводе с греческого означает \"струна\". Что это?\n"                                   ++
                "\t1. Хорда\t2. Прямая\t3. Отрезок\t4. Луч"
    ansver12 <- getLine
    let ans12 = read ansver12
    if ans12 == 1 then do
        putStrLn "Правильно!"
    else do
        finish 12
    
    
q13::IO()
q13 = do
    putStrLn $  "13. Который сейчас час, если оставшаяся часть суток вдвое больше прошедшей?\n"                             ++
                "\t1. 16\t2. 12\t3. 10\t4. 8"
    ansver13 <- getLine
    let ans13 = read ansver13
    if ans13 == 4 then do
        putStrLn "Правильно!"
    else do
        finish 13
    
q14::IO()
q14 = do
    putStrLn $  "14. Прибор для измерения улов на местности называется...?\n"                                               ++
                "\t1. Транспортир\t\t2. Астролябия\t\t3. Линейка\t\t4. Экер"
    ansver14 <- getLine
    let ans14 = read ansver14
    if ans14 == 2 then do
        putStrLn "Правильно! Остался последний вопрос."
    else do
        finish 14
        
    
q15::IO()
q15 = do
    putStrLn $  "15. Этого ученого называли королем математики. Его математическое дарование проявилось уже в детстве.\n"       ++
                "Рассказывают, что в трехлетнем возрасте он удивил окружающих, поправив расчеты своего отца с каменщиками.\n"   ++
                "Кто он?"                                                                                                       ++
                "\t1. Эйнштейн\t2. Лейбниц\t3. Гаусс\t4. Лагранж"
    ansver15 <- getLine
    let ans15 = read ansver15
    if ans15 == 3 then do
        putStrLn "Правильно! Ты набрал максимальное количество баллов - 50. Ты большой молодец! Мои поздравления!"
    else do
        finish 15
