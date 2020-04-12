# Prática: Programação funcional em Haskell


## Orientações

1. Nestes exercícios, vamos exercitar a construção de listas, o pattern matching e também vamos combinar tudo isso em funções recursivas. Esses recursos de Haskell estão explicados nestes [slides](https://docs.google.com/presentation/d/1CgQfX9IMbhj8Qmy7sUsxAmtXdxFqe47puFElN7JDobo/edit?usp=sharing). 


2. Os exercícios não são para entregar, não se preocupe com nota agora. Use o Discord da disciplina para postar dúvidas e soluções, converse com colegas, "brinque" com a linguagem, use o interpretador interativo para testar funções rapidamente. Procure pensar diferente do que costuma fazer em linguagens imperativas. Reuse funções já existentes e acostume-se a procurar outras.

## Construção de listas

1. Qual será o resultado das seguintes operações em Haskell? (procure deduzir antes de testar no interpretador)

   ```
   > 2:[4,6]
   > 36:49:[]
   > [2]:[3]:[5]:[7]:[]
   > '0':"1010"
   > (2,4):[(3,9)]
   > "No":["Problem"]
   ```
   
2. As operações abaixo retornam erro no GHCi. Você consegue identificar os motivos?

   ```
   > 'a':[2,3]
   > 1:2:3:[[]]
   > "abra":"cadabra"
   > (5,25):[6,36]
   ```
   
3. Escreva uma função `ends :: [Int] -> [Int]` que receba uma lista e retorne outra lista contendo o primeiro e o último elementos da primeira lista. Crie 2 versões dessa função: uma usando o operador de construção de lista (`:`) e outra usando apenas a notação de lista entre colchetes.

4. A função recursiva abaixo usa o operador de construção de lista (`:`). O que faz esta função?
   ```
   deduzame :: [Integer] -> [Integer]
   deduzame [] = []
   deduzame lst = (2 * head lst) : deduzame (tail lst)
   ```

5. A função recursiva abaixo também usa o operador ':'. Deduza o que faz esta função.
   ```
   deduzame2 :: [Integer] -> [Integer]
   deduzame2 [] = []
   deduzame2 lst = if (head lst) > 2
     then head lst : deduzame2 (tail lst) 
     else deduzame2 (tail lst)
   ```


## Pattern matching

1. Reescreva a função `deduzame` do exercício 4 (acima) usando a notação `(x:xs)` para representar a lista `lst`. Ajuste o restante do código da função. Você verá que o código ficará mais enxuto, mais legível.


2. Reescreva também a função `deduzame2` do exercício 5, usando a notação `(x:xs)` para representar a lista `lst`. 



## Recursão


1. Usando recursão, escreva uma função `geraTabela :: Int -> [(Int,Int)]` que produza uma lista com `n` tuplas, cada tupla com números de `n` a `1` e seus respectivos quadrados. Exemplo: 

   ```
   > geraTabela 5
   [(5,25),(4,16),(3,9),(2,4),(1,1)]
   > geraTabela 0
   []
   ```

2. Defina uma função **recursiva** que verifique se um dado caracter está contido numa string, conforme os exemplos abaixo:

   ```
   > contido 'e' "andrea"
   True
   > contido 'x' "andrea"
   False
   > contido 'a' ""
   False
   ```
   Obs.: Neste exercício, não vale usar `elem`.
   
   
3. Defina uma função recursiva que receba uma lista de coordenadas de pontos 2D e desloque esses pontos em 2 unidades, conforme o exemplo abaixo:

   ```
   > translate [(0.1,0.2),(1.1,6.0),(2.0,3.1)]
   [(2.1,2.2),(2.1,8.0),(4.0,5.1)]
   ```

4. Defina uma função recursiva que receba uma lista de palavras e retorne a quantidade dessas palavras que tenham mais de 5 caracteres. Exemplo de uso:
   ```
   > countLongs ["limao", "banana", "pera", "maracuja"]
   2
   ```

5. Defina uma função recursiva `onlyLongs :: [String] -> [String]` que receba uma lista de palavras e retorne outra lista somente com as palavras que tenham mais de 5 caracteres. Exemplo de uso: 
   ```
   > onlyLongs ["limao", "banana", "pera", "maracuja"]
   ["banana","maracuja"]
   ```




