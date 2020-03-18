import Data.Char

{-
  Muito importante conhecer funções pré-definidas que manipulam listas:
  length, head, tail, init, last, concat, ++
-}

{-
  Exemplos de definição de funções tipadas que fazem operações simples (sem listas)

  1) Função que recebe 3 argumentos inteiros e resulta em inteiro
  2) Função que recebe 4 floats e resulta em float
  3) Função que recebe 1 inteiro e 1 float e resulta em float
  4) Função que recebe 2 strings e resulta em string
  5) Função que recebe 2 strings e resulta em inteiro
  6) Função que recebe 3 caracteres e resulta em inteiro
  7) Função que recebe 2 inteiros e resulta em tupla de inteiros
  8) Função que recebe 1 inteiro e 1 string e resulta em tupla de inteiro, inteiro e string
-}

func1 :: Int -> Int -> Int -> Int
func1 x y z = x+y+z

func2 :: Float -> Float -> Float -> Float -> Float
func2 x y z w = x^2 + 2*y + z/2 + w

func3 :: Int -> Float -> Float
func3 x y = fromIntegral x + y
-- A implementacao abaixo vai dar erro devido ao tipo
-- func3 x y = x + y

func4 :: String -> String -> String
func4 str1 str2 = str1++str2

func5 :: String -> String -> Int
func5 str1 str2 = length str1 + length str2

func6 :: Char -> Char -> Char -> Int
func6 a b c = ord a + ord b + ord c  -- função ord está definida em Data.Char

func7 :: Int -> Int -> (Int,Int)
func7 x y = (x,y)

func8 :: Int -> String -> (Int, Int, String)
func8 x s = (x, x*2, s)


{-
  Exemplos de definição de funções tipadas usando listas, sem percurso dos elementos

  1) Função que recebe lista de strings e concatena a primeira com a última
  2) Função que recebe string e concatena o primeiro caracter com o último
  3) Função que recebe lista de inteiros e soma os 2 primeiros
 *4) Função que recebe uma lista de floats e retorne o tamanho da lista desconsiderando o inicio e o fim dela
  Obs.: Poucos exemplos aqui, pois o mais comum é ter que percorrer a lista elemento por elemento
-}

funclis1 :: [String] -> String
funclis1 lis = head lis ++ last lis

funclis2 :: String -> String -- String equivale a [Char]
funclis2 str = [head str] ++ [last str]
-- operador '++' concatena listas, mas head/last vão retornar Char, então resolve-se colocando resultados entre colchetes

funclis3 :: [Int] -> Int
funclis3 lis = (head lis) + (head (tail lis))

funclis4 :: [Float] -> Int
funclis4 lis = length (tail(init lis))

{-
  ==> Alta ordem: map
  Exemplos de funções que utilizam a função de alta ordem map, sem usar lambda (funções anônimas)
  1) Somar 2 a cada elemento de uma lista
  2) Converter para float cada elemento de uma lista de inteiros (função fromIntegral faz conversão de um inteiro)
  3) Obter o primeiro caracter de cada string contida numa lista
  4) Obter o valor de cada caracter pertencente a uma string
  5) Converter para inteiro cada caracter de uma string contendo somente digitos de 0 a 9
  6) Testar se cada elemento da lista é maior que 5
  7) Somar 2 a cada elemento de uma lista e multiplicar o resultado por 3
  8) Somar 1 a cada elemento maior que zero em uma lista de inteiros (mantendo o valor dos demais)
-}

horder1 :: [Int] -> [Int]
horder1 lis = map (+2) lis

horder2 :: [Int] -> [Float]
horder2 lis = map fromIntegral lis

horder3 :: [String] -> [Char]
horder3 lis = map head lis

horder4 :: String -> [Int]
horder4 str = map ord str

horder5 :: String -> [Int]
horder5 str = map digitToInt str

horder6 :: [Int] -> [Bool]
horder6 lis = map (>5) lis

horder7err :: [Int] -> [Int]
horder7err lis = map (+2*3) lis -- Errado: isso vai somar 6, não vai somar 2 e multiplicar o resultado por 3

-- Solucao certa
aux7 x = (x+2)*3 -- função auxiliar que faz as 2 operações corretamente
horder7 :: [Int] -> [Int]
horder7 lis = map aux7 lis

aux8 x = if x > 0 then x+1 else x
horder8 :: [Int] -> [Int]
horder8 lis = map aux8 lis


{-
  ==> Alta ordem: map com função anônima
  Exemplos de funções que utilizam a função de alta ordem map, sem usar lambda (funções anônimas)
  1) Somar 2 a cada elemento de uma lista e multiplicar o resultado por 3
  2) Para cada string em uma lista, concatená-la com "..."
  3) Para cada string em uma lista, concatená-la com "..." caso comprimento menor que 5
  *4) Para uma lista de floats, aplicar a expressão x^2 / 6 se o número for par e x*8 se o número for ímpar
-}

maplambda1 :: [Int] -> [Int]
maplambda1 lis = map (\x -> (x+2)*3) lis

maplambda2 :: [String] -> [String]
maplambda2 lis = map (\x -> x++"...") lis

maplambda3 :: [String] -> [String]
maplambda3 lis = map (\x -> if length x < 5 then x++"..." else x) lis

maplambda4 :: [Float] -> [Float]
maplambda4 lis = map (\x -> even x then x^2 / 6 else x*8) lis
{-
  ==> Alta ordem: filter
  Exemplos de funções que utilizam a função de alta ordem filter, sem usar lambda (funções anônimas)
  1) Selecionar inteiros menores que 5
  2) Em uma string, selecionar caracteres diferentes de ' '
  3) Em uma string, selecionar caracteres vogais
 *4) Em uma lista de inteiros, retornar todos que são divisíveis por 3 e 4 ao mesmo tempo
-}

filter1 :: [Int] -> [Int]
filter1 lis = filter (<5) lis

filter2 :: String -> String
filter2 str = filter (/=' ') str

filter3 :: String -> String
filter3 str = filter (`elem` "aeiou") str

auxfilter3a c = elem c "aeiou"
filter3a :: String -> String
filter3a str = filter auxfilter3a str

auxfilter3b c = c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'
filter3b :: String -> String
filter3b str = filter auxfilter3b str

filter4  :: [Int] -> [Int]
filter4 lis = filter auxfilter4 lis

auxfilter4 :: Int -> Bool
auxfilter4 x = mod x 3 == 0 && mod x 4 == 0


{-
  Ache os erros: cada função da seção seguinte tem um erro.
  Procure achá-los sem executar o código no interpretador.
  Depois descomente uma função de cada vez e observe as mensagens de erro.
-}

{-
funcerr1 :: [String] -> String
funcerr1 lis :: head lis ++ last lis

funcerr2 :: Int -> Int -> Float
funcerr2 x y = x/2 + y

funcerr3 :: [Int] -> Int
Funcerr3 lis = (head lis)*2


funcerr4 :: String -> String
funcerr4 str = filter (/=' ') lis

-}

{-
  Abaixo estão as funções com erros corrigidos.
-}

{-
-- Problema era que tinha '::' no lugar do '='
funcerr1 :: [String] -> String
funcerr1 lis = head lis ++ last lis

-- Problema era que os argumentos inteiros não iriam produzir resultado float sem conversão explícita
funcerr2 :: Int -> Int -> Float
funcerr2 x y = fromIntegral x/2 + fromIntegral y

-- Problema era no nome da função, com inicial maiúscula
funcerr3 :: [Int] -> Int
funcerr3 lis = (head lis)*2

-- Problema era que o argumento se chamava 'str', mas foi usado outro nome na definição da função
funcerr4 :: String -> String
funcerr4 str = filter (/=' ') str

-}


