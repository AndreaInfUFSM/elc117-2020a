import Data.List
import Data.Char

-------------------------------------------------------------------------------
-- Aquecimento
-------------------------------------------------------------------------------

{-
   1. As linhas abaixo podem ser testadas no interpretador interativo. Quais delas manipulam tuplas?
   a. let nome = "Fulano"
   b. let pessoa = (nome, 9)
   c. let mistery = (\n -> n^2 + 1)
   d. let numbers = [1,2]
   e. let things = (numbers,6)
   
   Resposta: as linhas 'b' e 'e' manipulam tuplas, que são delimitadas por parênteses e têm itens separados por vírgula. A linha 'c' tem parênteses, mas a sintaxe é de uma função lambda, não de tupla.
-}


{-
   2. Quais linhas abaixo manipulam listas?
   
   a. let nome = "Nome Sobrenome"
   b. let idade = 90
   c. let pessoa = (nome, 90)
   d. let mistery1 = (\n -> n^2 + 1)
   e. let mystery2 = (\str -> "Mrs. " ++ str)
   f. let info = ("Idades", [30, 56, 12, 29])
   
   Resposta:
   a. lista do tipo [Char] = String
   b. não é lista, é numeral inteiro
   c. tupla com lista aninhada: ([Char],Int) ou (String,Int)
   d. não é lista, é função lambda
   e. função lambda que concatena listas do tipo Char]
   f. tupla com listas aninhadas: ([Char],[Int])
   Resumindo: linhas a, c, e e f manipulam listas
   
-}


-------------------------------------------------------------------------------
-- Programação
-------------------------------------------------------------------------------

-- 1. Crie uma função anoIdade :: Int -> (Int, Int) que, dado o ano de nascimento de uma pessoa, retorne uma tupla contendo o próprio ano de nascimento e a idade da pessoa no ano atual.

anoIdade :: Int -> (Int, Int)
anoIdade nascimento =
    (nascimento, 2020 - nascimento)

-- Outra solucao usando uma constante para representar o ano atual

anoAtual = 2020
anoIdade' :: Int -> (Int, Int)
anoIdade' nasc = 
    (nasc, anoAtual-nasc)


-- 2. Crie uma função selectName :: (String,Int,Int) -> String que receba uma tupla contendo nome, ano de nascimento e idade de uma pessoa, e retorne seu nome.

selectName :: (String, Int, Int) -> String
selectName (nome, _, _) =
    nome

-- 3. Crie uma função allNames :: [(String,Int,Int)] -> [String] que receba uma lista com dados de pessoas (nome, ano de nascimento e idade) e retorne uma lista contendo todos os nomes. 
-- Resolva este exercício usando uma função de alta ordem e a função selectName.

allNames :: [(String, Int, Int)] -> [String]
allNames lis = 
    map selectName lis

-- 4. Resolva o exercício anterior usando uma função anônima que substitua a função selectName.
allNames2 :: [(String, Int, Int)] -> [String]
allNames2 lis =
    map (\(x, _, _) -> x) lis

-- 5. Crie uma função distance :: (Float, Float) -> (Float, Float) -> Float que receba as coordenadas de 2 pontos num espaço bidimensional e calcule a distância entre eles usando o teorema de pitágoras.
distance :: (Float, Float) -> (Float, Float) -> Float
distance (x1, y1) (x2, y2) =
    sqrt $ ( x2 - x1 )^2 + ( y2 - y1 )^2
    -- o mesmo que: 
    -- sqrt ( ( x2 - x1 )^2 + ( y2 - y1 )^2 )

-- 6. Você tem uma lista de tuplas contendo, cada uma, um nome de empresa e a URL de seu site web. Escreva uma função que receba a lista de tuplas e retorne uma lista de links em HTML.
htmlLink :: [(String, String)] -> [String]
htmlLink lis =
    map (\(company, url) -> "<a href=\"" ++ url ++ "\">" ++ company ++ "</a") lis

-- 7. Suponha que uma tupla (Float, Float, Float, Float) represente um retângulo (x,y,w,h) com vértice superior esquerdo posicionado no ponto x,y e com largura e altura dados por w e h. 
-- Considerando isso, crie uma função que receba uma lista de retângulos e retorne outra lista ([Float]) com a área de cada um. Use uma função auxiliar (com nome) para calcular a área de um retângulo.
rectangleAreaAll :: [(Float, Float, Float, Float)] -> [Float]
rectangleAreaAll lis =
    map rectangleArea lis

rectangleArea :: (Float, Float, Float, Float) -> Float
rectangleArea (_, _, w, h) =
    w*h 

-- 8. Resolva o exercício anterior usando uma função lambda.
rectangleAreaAll2 :: [(Float, Float, Float, Float)] -> [Float]
rectangleAreaAll2 lis =
    map (\(_, _, w, h) -> w * h) lis

-- 9. Crie as funções testSort1 :: [Int] -> [Int] e testSort2 :: [String] -> [String], aplicando a função sort respectivamente a uma lista de inteiros e a uma lista de strings.
testSort1 :: [Int] -> [Int] 
testSort1 lis = 
    sort lis

testSort2 :: [String] -> [String]
testSort2 lis =
    sort lis

-- 10. Forneça dois exemplos de uso de sortBy para uma lista de strings, usando diferentes funções de comparação.
sortBy1 :: [String] -> [String]
sortBy1 lis =
    sortBy compare lis

sortBy2 :: [String] -> [String]
sortBy2 lis =
    sortBy (flip compare) lis

-- Bônus: sortBy3
-- Exemplo de comparador para colocar em primeiro lugar as strings terminadas por 'a'
stringcompare s1 s2  | last s1 == 'a' = LT
                     | otherwise = GT
         
sortBy3 :: [String] -> [String]
sortBy3 lst = sortBy stringcompare lst

-- *Main> testSortBy2 ["joao","maria","joana","flavio","larissa"]
-- ["maria","joana","larissa","flavio","joao"]


-- 11. Escreva uma função testZip :: [Int] -> [Int] que aplique zip e depois obtenha somente as tuplas cuja soma de seus elementos seja menor que 10.
testZip :: [Int] -> [Int] -> [(Int, Int)]
testZip lis1 lis2 =
     filter (\(x, y) -> x + y < 10) $ zip lis1 lis2
     -- o mesmo que: 
     -- filter (\(x, y) -> x + y < 10) (zip lis1 lis2)
