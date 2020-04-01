-- Infectologistas consideram que um indivíduo tem febre quando sua temperatura corpórea está acima de 37,8oC. 
-- Escreva uma função verificaFebre :: [Float] -> [Float] que, dada uma lista de temperaturas de indivíduos, selecione aquelas que representam febre. 
-- Resolva esta questão definindo uma função auxiliar que verifica se uma dada temperatura é febre ou não.
verificaFebre1 :: [Float] -> [Float]
verificaFebre1 lis = 
    filter verificaFebreAux lis

verificaFebreAux :: Float -> Bool
verificaFebreAux temperatura = 
    temperatura > 37.8

-- Resolva a questão anterior sem definir uma função auxiliar.
verificaFebre2 :: [Float] -> [Float]
verificaFebre2 lis =
    filter (\x -> x > 37.8) lis

-- No interpretador, os códigos map (+2) [1,2,3] e map (\m -> n + 2) [1,2,3] produzem o mesmo resultado. Qual deles usa função lambda?
-- O segundo

-- O que faz o código map (\n -> n^2 + 2) [1,2,3]?
-- Aplica a função n^2 + 2 para 1, 2, e 3; produzindo os seguintes resultados: 3, 6, 11.

-- Escreva uma função tipada que calcule a^2 + a + 2 para cada elemento a de uma lista lis.
calcula :: [Float] -> [Float]
calcula lis = 
    map (\a -> a^2 + a + 2) lis
