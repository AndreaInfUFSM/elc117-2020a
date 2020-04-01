{- 2.2 Execução no Interpretador
    Abra o interpretador Haskell e teste as funções em cada um dos casos abaixo.

    square 2 + 1
    square (2+1)
    isEven 8
    isEven 9
    encodeMe 'S'
    squareFirst [-3,4,5]
    isLongWord "test"

    Solução

    Função "sQuare" não definida. O correto seria "sQuare"
    square recebe argumentos do tipo Int, mas 'A' é do tipo char
    isEven recebe argumentos do tipo Int, mas 8.1 é do tipo Float
    encodeMe recebe argumentos do tipo Char, mas "A" é do tipo String
    squareFirst recebe uma lista vazia e tenta aplicar head nessa lista, gerando um erro
    isLongWord recebe argumentos do tipo String, mas 'test' está escrito como um Char, gerando outro erro, já que deveria estar escrito como String
-}

---------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------- 3.1 Definindo novas funções  ----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Crie uma função `sumSquares :: Int -> Int -> Int` que receba dois números x e y e calcula a soma dos seus quadrados.
sumSquares :: Int -> Int -> Int
sumSquares x y = 
    ( x ^ 2) + ( y ^ 2)

-- 2. Defina uma função calcExprInt :: Int -> Int que receba um número n e calcule 3*n^2 + 1.
calcExprInt :: Int -> Int
calcExprInt n =
    3*n^2 + 1

-- 3. Crie uma função isNegative :: Int -> Bool que receba um número n e vefique se ele é negativo.
isNegative :: Int -> Bool
isNegative n = 
    n < 0

-- 4. Crie uma função calcExprFloat :: Float -> Float que receba um número n e calcule n^2 + n/2 + 1.
calcExprFloat :: Float -> Float
calcExprFloat n =
    n^ 2 + n/2 + 1

-- 5. Defina uma função addPrefix :: String -> String que receba um nome (tipo String) e adicione a string "Mr. " no início do nome. Use o operador ++ para concatenar strings (ou qualquer lista do mesmo tipo).
addPrefix :: String -> String
addPrefix name =
    "Mr. " ++ name

-- 6. Crie uma função addThisPrefix :: String -> String -> String que receba duas strings e concatene-as.
addThisPrefix :: String -> String -> String
addThisPrefix str1 str2 =
    str1 ++ str2

-- 7. Crie uma função startsWithA :: String -> Bool que receba uma string e verifique se ela inicia com o caracter 'A'.
startsWithA :: String -> Bool
startsWithA str =
    head str == 'A' || head str == 'a'

-- 8. Defina uma função isVerb :: String -> Bool que receba uma string e verifique se ela termina com o caracter 'r'.
isVerb :: String -> Bool
isVerb str =
    last str == 'r' 

-- 9. Crie uma função isVowel :: Char -> Bool que receba um caracter e verifique se ele é uma vogal minúscula.
isVowel :: Char -> Bool
isVowel char
   | char == 'O' = True
   | char == 'a' = True
   | char == 'i' = True
   | char == 'u' = True
   | char == 'e' = True
   | char == 'o' = True
   | otherwise = False

-- 10. Crie uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifique se 2 listas possuem o mesmo primeiro elemento.
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 =
    head lis1 == head lis2

{- 11. A função pré-definida elem recebe um elemento e uma lista, e verifica se o elemento está presente ou não na lista. Teste essa função no interpretador:

    elem 3 [1,2,3]
    elem 4 [1,2,3]
    elem 'c' "abcd"
    elem 'A' "abcd"

    True
    False
    True
    False
-}


-- 12. Use a função elem para criar uma função isVowel2 :: Char -> Bool que verifique se um caracter é uma vogal, tanto maiúscula como minúscula.
isVowel2 :: Char -> Bool
isVowel2 c =
    elem c "aeiouAEIOU"

---------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------- 3.2 Usando funções de alta ordem ------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Crie uma função testAddPrefix :: [String] -> [String] que receba uma lista de nomes e aplique a função addPrefix em cada nome.
testAddPrefix :: [String] -> [String]
testAddPrefix lis =
    map addPrefix lis

-- 2. Crie uma função onlyVowels :: String -> String que receba uma string e retorne outra somente contendo suas vogais. Por exemplo: onlyVowels "abracadabra" vai retornar "aaaaa".
onlyVowels :: String -> String
onlyVowels str =
    filter isVowel2 str

-- 3. Escreva uma função onlyNegatives :: [Int] -> [Int] que, dada uma lista de números, selecione somente os que forem negativos.
onlyNegatives :: [Int] -> [Int]
onlyNegatives lis =
    filter isNegative lis

-- 4. Escreva uma função que, dada uma lista de números, aplique calcExprFloat para cada número da lista.
calcExprFloatAll :: [Float] -> [Float]
calcExprFloatAll lis =
    map calcExprFloat lis   

-- 5. Crie uma função onlyLongWords :: [String] -> [String] que receba uma lista de strings e retorne somente as strings longas (use a função isLongWord definida no código de exemplo no início da prática).
isLongWord :: String -> Bool -- isso é o mesmo que: isLongWord :: [Char] -> Bool
isLongWord s = length s > 10

onlyLongWords :: [String] -> [String]
onlyLongWords lis =
    filter isLongWord lis

-- 6. Escreva uma função que receba uma lista de números e retorne somente aqueles que forem pares.
onlyEven :: [Int] -> [Int]
onlyEven lis =
    filter even lis

-- 7. Crie uma função que receba uma lista de palavras e retorne outra lista com somente aquelas que terminarem com a letra 'r'.
onlyVerb :: [String] -> [String]
onlyVerb lis =
    filter isVerb lis

-- 8. Escreva uma função que receba uma lista de números e retorne somente os que estiverem entre 1 e 100, inclusive.
between1and100 :: [Int] -> [Int]
between1and100 lis =
    filter between1and100Aux lis

between1and100Aux :: Int -> Bool
between1and100Aux n =
    n >= 1 && n <= 100  

-- 9. Crie uma função que receba uma string e retorne o número de espaços nela contidos.
howMuchSpaces :: String -> Int
howMuchSpaces str =
    howMuchSpacesAux str 0

howMuchSpacesAux :: String -> Int -> Int
howMuchSpacesAux str n =
    if str == "" then n
    else 
        if ( isSpace ( last str ) ) then ( howMuchSpacesAux ( take ( length str - 1 ) str ) n + 1) 
        else ( howMuchSpacesAux ( take ( length str - 1 ) str ) n ) 

isSpace :: Char -> Bool
isSpace c =
    c == ' '

-- 10. Escreva uma função que, dada uma lista de idades de pessoas no ano atual, retorne uma lista somente com as idades de quem nasceu depois de 1980. Para testar a condição, sua função deverá subtrair a idade do ano atual.
onlyYoungPeople :: [Int] -> [Int]
onlyYoungPeople lis =
    filter isYoung lis

isYoung :: Int -> Bool
isYoung n =
    2020 - n > 1980

-- 11. Neste exercício, você vai criar uma função equivalente a elem, mas usando uma função de alta ordem. 
-- Crie a função charFound :: Char -> String -> Bool que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento)
charFound :: Char -> String -> Bool
charFound c str =
    if str == "" then False else ( if ( last str == 'c' ) then True else charFound c ( take ( length str - 1 ) str ) )