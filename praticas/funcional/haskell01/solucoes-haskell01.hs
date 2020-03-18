{-
  Universidade Federal de Santa Maria
  ELC117 - Paradigmas de Programação
  Soluções dos exercícios da primeira aula prática de Haskell
-}

-- 1. Crie uma função sumSquares :: Int -> Int -> Int que calcule a soma dos quadrados de dois números x e y.

sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2


-- 2. Crie uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifique se 2 listas possuem o mesmo primeiro elemento. Use a função head e o operador lógico == para verificar igualdade.

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads l1 l2 = (head l1) == (head l2)


-- 3. Escreva uma função que receba uma lista de nomes e adicione a string "Super " no início de cada nome. Use o operador ++ para concatenar strings (ou qualquer lista).

superNames :: [String] -> [String]
superNames names = map ("Super"++) names


-- 4. Crie uma função que receba uma string e retorne o número de espaços nela contidos. Dica: aplique 2 funções consecutivamente.

numSpaces :: String -> Int
numSpaces str = length (filter (==' ') str)
-- OU com menos parênteses, usando '$':
-- numSpaces str = length $ filter (==' ') str


-- 5. Escreva uma função que, dada uma lista de números, calcule 3*n^2 + 2/n + 1 para cada número n da lista. Dica: defina uma função anônima.

funcMap :: [Float] -> [Float]
funcMap ns = map (\n -> 3*n^2 + 2/n + 1) ns

funcMapInt :: [Int] -> [Float]
funcMapInt ns = map (\n -> 3*(fromIntegral n)^2 + 2/(fromIntegral n) + 1) ns


-- 6. Escreva uma função que, dada uma lista de números, selecione somente os que forem negativos.
filterNegatives :: [Int] -> [Int]
filterNegatives numbers = filter (<0) numbers


-- 7. Escreva uma função que receba uma lista de números e retorne somente os que estiverem entre 1 e 100, inclusive. Dica 1: defina uma função anônima. Dica 2: use o operador && para expressar um 'E' lógico.

filterInterval :: [Int] -> [Int]
filterInterval numbers = filter (\x -> x >= 1 && x <= 100) numbers


-- 8. Escreva uma função que, dada uma lista de idades de pessoas no ano atual, retorne uma lista somente com as idades de quem nasceu depois de 1980. Para testar a condição, sua função deverá subtrair a idade do ano atual.

filterIdades :: [Int] -> [Int]
filterIdades idades = filter (\i -> 2019 - i > 1980) idades


-- 9. Escreva uma função que receba uma lista de números e retorne somente aqueles que forem pares.
filterEven :: [Int] -> [Int]
filterEven numbers = filter even numbers


-- 10. Crie uma função charFound :: Char -> String -> Bool que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:
{-
    > charFound 'a' ""  
    False  
    > charFound 'a' "uau"  
    True  
-}

charFound :: Char -> String -> Bool
charFound c str = filter (==c) str /= []
-- Há muitas outras formas de resolver a questão 10 acima!


-- 11. Crie uma função que receba uma lista de nomes e retorne outra lista com somente aqueles nomes que terminarem com a letra 'a'. Dica: conheça o list monster, do autor Miran Lipovača :-)

lastIsA :: [String] -> [String]
lastIsA names = filter (\x -> last x == 'a') names


-- 12. A função takeWhile :: (a -> Bool) -> [a] -> [a] é uma função de alta ordem. Ela recebe uma função condicional e uma lista, retornando o "menor prefixo" (isto é, porção inicial) da lista que satisfaça a condição dada. Teste os exemplos abaixo no GHCi e depois crie um novo exemplo:
{-
    > takeWhile (< 5) [1,2,3,4,5]
    > takeWhile (/=' ') "Fulana de Tal"
-}
-- Novo exemplo:
-- takeWhile (/=',') "Penso, logo existo."
