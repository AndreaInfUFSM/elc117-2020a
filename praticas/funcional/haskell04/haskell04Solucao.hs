import Data.List
import Data.Char

-- Crie uma função anoIdade :: Int -> (Int, Int) que, dado o ano de nascimento de uma pessoa, retorne uma tupla contendo o próprio ano de nascimento e a idade da pessoa no ano atual.

anoIdade :: Int -> (Int, Int)
anoIdade nascimento =
    (nascimento, 2020 - nascimento)

-- Crie uma função selectName :: (String,Int,Int) -> String que receba uma tupla contendo nome, ano de nascimento e idade de uma pessoa, e retorne seu nome.

selectName :: (String, Int, Int) -> String
selectName (nome, _, _) =
    nome

-- Crie uma função allNames :: [(String,Int,Int)] -> [String] que receba uma lista com dados de pessoas (nome, ano de nascimento e idade) e retorne uma lista contendo todos os nomes. 
-- Resolva este exercício usando uma função de alta ordem e a função selectName.

allNames :: [(String, Int, Int)] -> [String]
allNames lis = 
    map selectName lis

-- Resolva o exercício anterior usando uma função anônima que substitua a função selectName.
allNames2 :: [(String, Int, Int)] -> [String]
allNames2 lis =
    map (\(x, _, _) -> x) lis

-- Crie uma função distance :: (Float, Float) -> (Float, Float) -> Float que receba as coordenadas de 2 pontos num espaço bidimensional e calcule a distância entre eles usando o teorema de pitágoras.
distance :: (Float, Float) -> (Float, Float) -> Float
distance (x1, y1) (x2, y2) =
    sqrt $ ( x2 - x1 )^2 + ( y2 - y1 )^2

-- * Você tem uma lista de tuplas contendo, cada uma, um nome de empresa e a URL de seu site web. Escreva uma função que receba a lista de tuplas e retorne uma lista de links em HTML.
htmlLink :: [(String, String)] -> [String]
htmlLink lis =
    map (\(company, url) -> "<a href=\"" ++ url ++ "\">" ++ company ++ "</a") lis

-- Suponha que uma tupla (Float, Float, Float, Float) represente um retângulo (x,y,w,h) com vértice superior esquerdo posicionado no ponto x,y e com largura e altura dados por w e h. 
-- Considerando isso, crie uma função que receba uma lista de retângulos e retorne outra lista ([Float]) com a área de cada um. Use uma função auxiliar (com nome) para calcular a área de um retângulo.
rectangleAreaAll :: [(Float, Float, Float, Float)] -> [Float]
rectangleAreaAll lis =
    map rectangleArea lis

rectangleArea :: (Float, Float, Float, Float) -> Float
rectangleArea (_, _, w, h) =
    w*h 

-- Resolva o exercício anterior usando uma função lambda.
rectangleAreaAll2 :: [(Float, Float, Float, Float)] -> [Float]
rectangleAreaAll2 lis =
    map (\(_, _, w, h) -> w * h) lis

-- Crie as funções testSort1 :: [Int] -> [Int] e testSort2 :: [String] -> [String], aplicando a função sort respectivamente a uma lista de inteiros e a uma lista de strings.
testSort1 :: [Int] -> [Int] 
testSort1 lis = 
    sort lis

testSort2 :: [String] -> [String]
testSort2 lis =
    sort lis

-- Forneça dois exemplos de uso de sortBy para uma lista de strings, usando diferentes funções de comparação.
sortBy1 :: [String] -> [String]
sortBy1 lis =
    sortBy compare lis

sortBy2 :: [String] -> [String]
sortBy2 lis =
    sortBy (flip compare) lis

-- Escreva uma função testZip :: [Int] -> [Int] que aplique zip e depois obtenha somente as tuplas cuja soma de seus elementos seja menor que 10.
testZip :: [Int] -> [Int] -> [(Int, Int)]
testZip lis1 lis2 =
     filter (\(x, y) -> x + y < 10) $ zip lis1 lis2