# Prática: Programação funcional em Haskell


## Orientações

1. Nestes exercícios, vamos usar algumas facilidades sintáticas do Haskell para gerar listas, isto é, vamos criá-las programaticamente e não só processá-las, como em exercícios anteriores. Essas facilidades estão explicadas nestes slides [slides](https://docs.google.com/presentation/d/1TMixYL165fAWWSdmBSz15Bv6rwBG8BpaCMktSRxiypc/edit?usp=sharing). Um importante recurso que usaremos é o conceito de *list comprehension*, que é um grande facilitador em Haskell e está presente em muitas outras linguagens.


2. Os exercícios não são para entregar, não se preocupe com nota agora. Use o Discord da disciplina para postar dúvidas e soluções, converse com colegas, "brinque" com a linguagem, use o interpretador interativo para testar funções rapidamente. Procure pensar diferente do que costuma fazer em linguagens imperativas. Quebre cada função em outras funções, reuse as que você já conhece, procure outras. 


## Exercícios

1. Usando *list comprehension*, defina uma função `add10toall :: [Int] -> [Int]`, que receba uma lista e adicione o valor 10 a cada elemento dessa lista, produzindo outra lista. Exemplo:

   ```
   > add10toall [0,1,2]
   [10,11,12]
   ```

2. Usando *list comprehension*, defina uma função `multN :: Int -> [Int] -> [Int]`, que receba um número `N` e uma lista, e multiplique cada elemento da lista por `N`, produzindo outra lista.


3. Usando *list comprehension*, defina uma função `applyExpr :: [Int] -> [Int]`, que receba uma lista e calcule `3*x+2` para cada elemento `x` da lista, produzindo outra lista.

4. Usando *list comprehension*, escreva uma função `addSuffix :: String -> [String] -> [String]` , para adicionar um dado sufixo às strings contidas numa lista. Exemplo: 

   ```
   > addSuffix "@inf.ufsm.br" ["fulano","beltrano"]
   ["fulano@inf.ufsm.br","beltrano@inf.ufsm.br]
   ```

5. Usando *list comprehension*, defina uma função `selectgt5 :: [Int] -> [Int]`, que receba uma lista e selecione somente os valores maiores que 5, produzindo outra lista.

6. Usando *list comprehension*, defina uma função `sumOdds :: [Int] -> Int`, que receba uma lista e obtenha o somatório dos valores ímpares, produzindo outra lista. Pesquise funções auxiliares que manipulem listas.

7. Usando *list comprehension*, defina uma função `selectExpr :: [Int] -> [Int]`, que receba uma lista e selecione somente os **valores pares entre 20 e 50**, produzindo outra lista.

8. Escreva uma função `countShorts :: [String] -> Int`, que receba uma lista de palavras e retorne a quantidade de palavras dessa lista que possuem menos de 5 caracteres. Use *list comprehension*.


9. Escreva uma função `calcExpr :: [Float] -> [Float]`, que calcule `x^2/2` para cada elemento `x` da lista de entrada e selecione apenas os resultados que forem maiores que 10. Use *list comprehension*.

10. Escreva uma função `trSpaces :: String -> String`, que receba uma string e converta espaços (' ') em traços ('-'). Use *list comprehension*.

11. Qual será o resultado de cada expressão abaixo?

    - a) `[ (x,y) | x <- [1..5], even x, y <- [(x + 1)..6], odd y ]`
    - b) `[ a ++ b | a <- ["lazy","big"], b <- ["frog", "dog"]]`
    - c) `concat [ [a,'-'] | a <- "paralelepipedo", not (elem a "aeiou")]`

12. Defina uma função `selectSnd :: [(Int,Int)] -> [Int]`, que receba uma lista de [tuplas](http://learnyouahaskell.com/starting-out#tuples) e selecione somente os segundos elementos dessas tuplas, produzindo outra lista. Use *list comprehension*.

13. Em Haskell, a função `zip` combina elementos de duas listas, produzindo uma lista de tuplas. Por exemplo:

    ```
    > zip [1,2] "ab"
    [(1,'a'),(2,'b')]
    > zip [1..] "abcde"
    [(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
    ```
   
    Usando a função `zip` com *list comprehension* e outras funções auxiliares, escreva uma função `dotProd :: [Int] -> [Int] -> Int` que calcule o somatório dos produtos dos pares de elementos de duas listas, conforme o exemplo:

    ```
    > dotProd [1,1,1,1] [2,2,2,2] -- 1*2 + 1*2 + 1*2 + 1*2
    8
    ```

14. Nesta questão você também deverá usar *list comprehension*. Suponha   que   um   retângulo   seja   representado   por   uma   [tupla](http://learnyouahaskell.com/starting-out#tuples) `(Float,Float,Float,Float)`, contendo respectivamente as coordenadas x e y do ponto no seu canto superior esquerdo, seguidas das suas medidas de largura e altura. Sabendo que o eixo x cresce de cima para baixo e o eixo y   da   esquerda   para   direita,   crie   uma   função `genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]` que receba um número N   e   um   ponto   (x,y)   e   gere   uma   sequência   de   N   retângulos   não sobrepostos.  Os retângulos devem ser alinhados pelos seus topos, a partir do ponto dado, com largura e altura constantes. Por exemplo, usando largura e altura iguais a 5.5: 

    ```
    > genRects 3 (0,0) 
    [(0.0,0.0,5.5,5.5),(5.5,0.0,5.5,5.5),(11.0,0.0,5.5,5.5)]
    ```

    Obs.: Use conversão explícita de tipos quando misturar Int e Float.
   
   

