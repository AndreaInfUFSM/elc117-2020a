{-- 
    Reescreva a função abaixo usando where (cuidado com o indent):
    
func1 :: [Int] -> Bool
func1 lst =
  let expr1 = head lst + 20
      expr2 = last lst * 2
   in expr1 > expr2

func1 :: [Int] -> Bool
func1 lst = expr1 > expr2
    where expr1 = head lst + 20
          expr2 = last lst * 2
--}

{-- 
    Reescreva a função abaixo usando where (cuidado com o indent):

import Data.Char
func2 :: String -> Bool
func2 str = sumdigits > 50
  where digits = map digitToInt str
        sumdigits = sum digits

func2 :: String -> Bool
func2 str =
    let digits = map digitToInt str
        sumdigits = sum digits
    
    in sumdigits > 50

--}

{--

    O que faz o programa abaixo?

testIO :: IO()
testIO = do
  nome <- getLine
  let encode  = map (\c -> chr (ord c + 1)) nome
  putStrLn encode

Muda as letras de uma palavra pela sua seguinte. 
Exemplo: 
ABCD = BCDE

--}

import Data.Char

-- Escreva um programa que leia um nome da entrada padrão e mostre uma mensagem usando este nome.
welcomeIO :: IO()
welcomeIO = do
    name <- getLine
    
    putStrLn ("Bem-vindo, " ++ name ++ "!")

-- Escreva um programa que leia uma string da entrada padrão e aplique algum teste a esta string, mostrando uma mensagem para informar se o teste resultou positivo ou negativo.
startsWithVowelIO :: IO()
startsWithVowelIO = do
    str <- getLine

    if elem ( head str ) "aeiouAEIOU" 
        then putStrLn("A palavra começa com uma vogal!")
        else putStrLn("A palavra começa com uma consoante.")

{--
    Baixe o programa validaCPF.hs e carregue-o no interpretador. Para executá-lo, chame a função main. Examine o código e note que ele difere do código mostrado nos slides. Que diferenças você notou?
--}

-- Modifique o código para incluir a parte de I/O que espera o usuário digitar o CPF


isCpfOk :: [Int] -> Bool
isCpfOk cpf = dv1 == cpf !! 9 && dv2 == cpf !! 10
  where digitos1 = take 9 cpf
        expr1 = (sum $ zipWith (*) digitos1 [10, 9 .. 2]) `mod` 11
        dv1 = if expr1 < 2 then 0 else 11 - expr1

        digitos2 = digitos1 ++ [dv1]
        expr2 = (sum $ zipWith (*) digitos2 [11, 10 .. 2]) `mod` 11
        dv2 = if expr2 < 2 then 0 else 11 - expr2

main :: IO()
main = do
  putStr "CPF: "
  cpf <- getLine
  let digits = (map digitToInt cpf)
  putStrLn (if isCpfOk digits then "OK" else "Not Ok")


-- Abra o código e procure entendê-lo. Onde são definidas as coordenadas dos retângulos? Altere algumas coordenadas e gere a imagem novamente.
-- listOfRects :: [Rect]

-- Onde são definidas as cores dos retângulos? Altere algumas cores e gere a imagem novamente.
-- listOfColors :: [Color]

-- Note que as listas de retângulos e cores estão "hard-coded" e isso não é uma boa prática. Em especial, seria inviável fazer isso para listas muito grandes. 
-- A solução para isso é gerar listas programaticamente, criando funções para isso! Explore esta abordagem criando outras listas de retângulos e cores, aplicando operações sobre as listas originais. 
-- Por exemplo: você pode gerar novos retângulos somando uma constante sobre as coordenadas dos retângulos originais, ou criar novas cores trocando os valores de (r,g,b). 
-- Essas novas listas podem ser concatenadas, replicadas, filtradas, etc.

type Rect      = (Point,Float,Float)
type Point     = (Float,Float)

listOfRects :: [Rect]
listOfRects = 
  [((x * 60, 0), 50, 50) | x <- [0 .. 5]]
             