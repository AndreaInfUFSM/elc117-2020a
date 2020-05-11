import Data.List
import Data.Char

{-------------------- Questão 1 --------------------}

{-
1. Escreva uma função **recursiva** `isBin :: String -> Bool` para verificar se uma dada String representa um número binário, ou seja, contém apenas caracteres `'0'` ou `'1'`. As únicas funções pré-definidas autorizadas aqui são `head` e `tail`. Exemplos de uso de `isBin`:

   ```
   > isBin "101010"
   True
   > isBin "1212"
   False
   > isBin ""
   False
   ```
-}

-- Percorrer a lista recursivamente, verificando se cada caracter é um dígito '0' ou '1'.
-- Se for encontrado algum caracter diferente, resultado é False e recursão não continua.
-- Atenção às condições de parada:
-- - isBin [] deverá resultar False, pois a ausência de dígitos não forma um número binário
-- - para um número binário válido, a recursão vai parar numa lista com um único elemento: ['0'] ou ['1'] (não numa lista vazia)

isBin :: String -> Bool
isBin []  = False
isBin ['0'] = True  -- equivalente a "0"
isBin ['1'] = True  -- equivalente a "1"
isBin (c:cs) = if c /= '0' && c /= '1' then False else isBin cs

-- Erros comuns:
-- - Definir isBin [] = True (contrariando exemplo fornecido)
-- - Não cuidar a condição de parada em "0" ou "1"


-- Solução alternativa 1 

isBinAlt1 :: String -> Bool
isBinAlt1 [] = False
isBinAlt1 (c:[]) = c == '0' || c == '1' 
isBinAlt1 (c:cs) = if c == '0' || c == '1' then isBinAlt1 cs else False

-- Solução alternativa 2
-- Usar elem para verificar dígitos válidos

isBinAlt2 :: String -> Bool
isBinAlt2 [] = False
isBinAlt2 (c:[]) = elem c "01" 
isBinAlt2 (c:cs) = if elem c "01" then isBinAlt2 cs else False

-- Solução alternativa 3
-- Evita reescrever a condição de verificação do dígito

isBinAlt3 :: String -> Bool
isBinAlt3 [] = False
isBinAlt3 (c:[]) = elem c "01" 
isBinAlt3 (c:cs) = isBinAlt3 [c] && isBinAlt3 cs


{-------------------- Questão 2 --------------------}


-- 2. Reescreva a função acima de forma não-recursiva. Dê outro nome para ela, por exemplo `isBin'`. Aqui você pode usar quaisquer funções auxiliares pré-definidas em Haskell. 


isBin' :: String -> Bool
isBin' "" = False
isBin' s = length (filter (\c -> notElem c "01") s) == 0

-- Erros ou vícios comuns:
-- - Esquecer de verificar lista vazia || usar condição para caso geral que retorna True para lista vazia
-- - Usar muitos "if then else" sem necessidade

-- Solução alternativa 1 
-- Usa função de alta ordem "all", que aplica uma função booleana a cada elemento e 
-- retorna True se o resultado para todos os elementos for True
isBinAlt1' :: String -> Bool
isBinAlt1' "" = False
isBinAlt1' s = all (\c -> elem c "01") s

{-------------------- Questão 3 --------------------}

{-
3. Encontra-se abaixo a definição parcial da função `bin2dec :: [Int] -> Int`, que converte uma lista de 0's e 1's (representando um número binário), em seu equivalente em decimal. 
   ```
   bin2dec :: [Int] -> Int
   bin2dec [] = undefined
   bin2dec bits = auxBin2Dec bits ((length bits)-1)
   ```
   Observe que:
   1. Usou-se `undefined` para o caso em que a função não tem resultado definido.
   2. Usou-se uma função auxiliar (`auxBin2Dec`) que recebe, como segundo argumento, o expoente que deverá multiplicar o primeiro elemento da lista.
   
   Implemente a função `auxBin2Dec` de forma **recursiva**, para que `bin2dec` funcione corretamente, conforme os exemplos abaixo:
   ```
   > bin2dec [0]
   0
   > bin2dec [1]
   1
   > bin2dec [0,1]
   1
   > bin2dec [1,0,1]
   5
   ```
-}   
   
-- Obs.: 
-- Supõe-se que a lista de entrada só contenha 0's e 1's, ou seja, não é tratado o caso de entrada inválida.


-- Supõe que o tamanho da lista e o expoente inicial sejam coerentes
-- A recursão é controlada pelo percurso na lista e para quando não houverem mais dígitos
auxBin2Dec :: [Int] -> Int -> Int
auxBin2Dec [] _ = 0 
auxBin2Dec (x:xs) exp = x * 2^exp + auxBin2Dec xs (exp-1)

   
bin2dec :: [Int] -> Int
bin2dec [] = undefined
bin2dec bits = auxBin2Dec bits ((length bits)-1)


-- Solução alternativa 1 
-- A recursão é controlada pelo expoente que vai decrementando e para quando chegar em 0
-- Supõe que o expoente seja coerente com o tamanho da lista
auxBin2DecAlt1 :: [Int] -> Int -> Int
auxBin2DecAlt1 (b:bs) exp
    | exp == 0 = b
    | otherwise = b * 2^exp + auxBin2DecAlt1 bs (exp-1)
    

bin2decAlt1 :: [Int] -> Int
bin2decAlt1 [] = undefined
bin2decAlt1 bits = auxBin2DecAlt1 bits ((length bits)-1)


{-------------------- Questão 4 --------------------}

-- 4. Reescreva a função do exercício anterior de forma **não-recursiva**, usando funções pré-definidas em Haskell. Dê outro nome para a função (por exemplo, `bin2dec'`).

-- alexandre (muito bom, solução 'sofisticada' :-) com redução usando foldl1)
alexbin2dec' :: [Int] -> Int
alexbin2dec' [] = undefined
alexbin2dec' bits = foldl1 (\n bit -> n * 2 + bit) bits

-- daniel (solução aproveitando várias funções pré-definidas)
-- resultado 0 para lista vazia (era undefined no exercício anterior)
danielbin2dec' :: [Int] -> Int
danielbin2dec' bits = sum (map (2^) (elemIndices 1 (reverse bits))) 

{-
-- deivis (ATENÇÃO: não funciona, verifique operação !! para obter índices)
deivisbin2dec2 :: [Int] -> Int
deivisbin2dec2 [] = undefined
deivisbin2dec2 y = sum [ 2^(x) | x <- [length y-1..0] , y !! x == 1]
-}

-- gabriel (solução aproveitando várias funções pré-definidas)
-- definiu função auxiliar, mas na versão não-recursiva não era necessário
gabrielauxBin2Dec' :: [Int] -> Int
gabrielauxBin2Dec' list = sum (map (\x -> 2^x) (elemIndices 1 (reverse list)))

gabrielbin2dec' :: [Int] -> Int
gabrielbin2dec' [] = undefined
gabrielbin2dec' bits = gabrielauxBin2Dec' bits

{-
-- guilherme (ATENÇÃO: não funciona, verifique resultados para diferentes entradas: [0], [1], [0,1], [1,0], etc.)
guibin2dec' :: [Int] -> Int 
guibin2dec' [] = undefined 
guibin2dec' bits = sum (zipWith (\bit expo -> bit*2^expo) [bit | bit <- bits] [expo | expo <- [length bits..1]])
-}

{-
-- gustavo (ATENÇÃO: erro no interpretador, nome da função está diferente na segunda linha)
bin2dec' :: [Int] -> Int
auxBinDec' bin = sum (map (2^)  (elemIndices 1 (reverse bin))) --reverse inverte
-}

-- joao (muito bom, solucao 'sofisticada' :-) com reducao usando foldl')
-- resultado 0 para lista vazia (era undefined no exercício anterior)
joaobin2dec' :: [Int] -> Int
joaobin2dec' = foldl' (\acc x -> acc * 2 + x) 0

-- luigi (solução com sub-expressões)
-- resultado 0 para lista vazia (era undefined no exercício anterior)
luigibin2dec' :: [Int] -> Int
luigibin2dec' x = sum ( zipWith (*) x bin )
    where size = (length x)-1
          bin = reverse [ 2^k | k <- [0,1..size] ]

-- luiz henrique (solucao com list comprehension e outros recursos)
luizbin2dec2 :: [Int] -> Int
luizbin2dec2 [] = undefined
luizbin2dec2 bits = sum [ 2^(length bits-1-x) | x <- [0..length bits-1] , bits !! x == 1]  

-- pedro leonel (solução com sub-expressão)
pedrobin2dec2 :: [Int] -> Int
pedrobin2dec2 [] = undefined
pedrobin2dec2 bits = sum(zipWith (*) bits pows)
    where pows = [2^y |y <- reverse[0..length(bits)-1]]
    
{-
-- samuel (solução bem mais longa do que necessário, quase certa mas com problemas)
-- resultado 0 para lista vazia (era undefined no exercício anterior)
-- ATENÇÃO: veja resultado errado abaixo 
-- *Main> samuelbin2dec2 [1]
-- 1
-- *Main> samuelbin2dec2 [0]
-- 1

--auxaux exe4
preencheExpoentes :: Int -> [Int]
preencheExpoentes tam = [ x | x<- [tam-1, tam-2..0]]

--auxaux exe4
multiplicar :: [Int] -> [Int]
multiplicar lst = map(\x->x*2) lst

--aux exe4
aux :: [Int] -> Int -> Int
aux lst tam = sum([ x | x<- (zipWith(^) (multiplicar lst) (preencheExpoentes tam))])

--exercicio 4 - FUNÇÃO PRINCIPAL
samuelbin2dec2 :: [Int] -> Int
samuelbin2dec2 x = aux x (length x)

-}

-- thiago (solução com list comprehension, legibilidade comprometida devido a repetições, mas ok)
-- resultado 0 para lista vazia (era undefined no exercício anterior)
thiagobin2dec' :: [Int] -> Int
thiagobin2dec' bits =  sum (zipWith (\x y -> x*2^y) [x | x <- bits] [y | y <- [(length bits)-1,(length bits)-2..0]])

-- tiago (solução com sub-expressão)
-- resultado 0 para lista vazia (era undefined no exercício anterior)
tiagobin2dec' :: [Int] -> Int
tiagobin2dec' lis = sum(zipWith(*) lis exp)
    where exp = reverse [2^x | x<- [0..(length lis) -1]]
    


{-
5. Crie uma função **recursiva** `dec2bin :: Int -> [Int]` que receba um número inteiro positivo e retorne sua representação em binário, sob forma de uma lista de 0's e 1's. As funções auxiliares autorizadas aqui são `mod`, `div` e `reverse`.
   Exemplos de uso da função: 
   ```
   > dec2bin 0
   [0]
   > dec2bin 1
   [1]
   > dec2bin 11
   [1,0,1,1]
   > dec2bin 4
   [1,0,0]
   ```
-}

dec2bin :: Int -> [Int]
dec2bin n = if n > 1 then dec2bin (div n 2) ++ [mod n 2] else [n]

-- Erro comum:
-- - dec2bin 0 deve resultar [0] e não []


-- Solucao alternativa 1 (recursão em função auxiliar)

dec2binAlt1 :: Int -> [Int]
dec2binAlt1 n = reverse (auxdec2binAlt1 n)

auxdec2binAlt1 :: Int -> [Int]
auxdec2binAlt1 0 = [0]
auxdec2binAlt1 1 = [1]
auxdec2binAlt1 n = mod n 2 : auxdec2binAlt1 (div n 2)


{-
dec2bin :: Int -> [Int]
dec2bin n = reverse ( dec2bin' n
  where
  dec2bin' 0 = []
  dec2bin' n = mod n 2 : dec2bin' (div n 2)
  -}


   
-- 6. Implemente uma dessas funções: `isHex :: String -> Bool` ou `hex2dec :: String -> Int` ou `dec2hex :: Int -> String`, que são semelhantes às dos exercícios anteriores, porém com números hexadecimais no lugar de números binários. Aqui está tudo liberado: você pode escolher qual das funções irá implementar, sem restrições sobre como deve fazer isso.

-- Créditos ao Alexandre Chagas Brites :-)

isHex :: String -> Bool
isHex [] = False
isHex str = length (filter (\c -> notElem (toUpper c) "0123456789ABCDEF") str) == 0

hex2dec :: String -> Int
hex2dec [] = undefined
hex2dec str = foldl (\n hex -> n * 16 + digitToInt hex) 0 str

dec2hex :: Int -> String
dec2hex n = if n > 15 then dec2hex (div n 16) ++ [intToDigit (mod n 16)] else [intToDigit n]

-- Erros / vícios comuns:
-- Testar ou converter cada valor exaustivamente
{-

encodeMe :: Char -> Int
encodeMe c 
   | c == '0'  = 0
   | c == '1'  = 1
   | c == '2'  = 2
   | c == '3'  = 3
   | c == '4'  = 4
   | c == '5'  = 5
   | c == '6'  = 6
   | c == '7'  = 7
   | c == '8'  = 8
   | c == '9'  = 9
   | c == 'A'  = 10
   | c == 'B'  = 11
   | c == 'C'  = 12
   | c == 'D'  = 13
   | c == 'E'  = 14
   | c == 'F'  = 15
   | otherwise = undefined

auxHex2Dec :: String -> Int -> Int
auxHex2Dec "0" 0= 0
auxHex2Dec "1" 0= 1
auxHex2Dec "2" 0= 2
auxHex2Dec "3" 0= 3
auxHex2Dec "4" 0= 4
auxHex2Dec "5" 0= 5
auxHex2Dec "6" 0= 6
auxHex2Dec "7" 0= 7
auxHex2Dec "8" 0= 8
auxHex2Dec "9" 0= 9
auxHex2Dec "A" 0= 10
auxHex2Dec "B" 0= 11
auxHex2Dec "C" 0= 12
auxHex2Dec "D" 0= 13
auxHex2Dec "E" 0= 14
auxHex2Dec "F" 0= 15
auxHex2Dec list exp = (digitToInt (head list))*16^exp + auxHex2Dec (tail list) (exp-1)

-}

