# Prática: Programação funcional em Haskell


## Orientações

1. Nestes exercícios, você vai praticar o uso e definição de funções com listas e tuplas. O conceito de lista você já conhece e já praticou em outros exercícios. O conceito de **tupla** é uma novidade nesta aula e você deve antes estudá-lo nesses [slides](https://docs.google.com/presentation/d/1sMyFIaHF9p8DwcVPaYgReZBb-uUTpZaYiTtvVWdm5Kw/edit?usp=sharing).


2. Você pode (e deve) procurar funções pré-definidas em bibliotecas Haskell que auxiliem na resolução dos exercícios. **Porém**, se você encontrar alguma função pré-definida que faz tudo o que for solicitado num exercício, resolva o exercício com e sem essa função, para explorar várias formas de resolver um mesmo problema.

2. Os exercícios não são para entregar, não se preocupe com nota agora. Use o Discord da disciplina para postar dúvidas e soluções, converse com colegas, "brinque" com a linguagem, use o interpretador interativo para testar funções rapidamente. Procure pensar diferente do que costuma fazer em linguagens imperativas. Quebre cada função em outras funções, reuse as que você já conhece, procure outras. 


## Aquecimento

1. As linhas abaixo podem ser testadas no interpretador interativo. Quais delas manipulam tuplas?
   ```haskell
   let nome = "Fulano"
   let pessoa = (nome, 9)
   let mistery = (\n -> n^2 + 1)
   let numbers = [1,2]
   let things = (numbers,6)
   ```
2. Quais linhas abaixo manipulam listas?
   ```haskell
   let nome = "Nome Sobrenome"
   let idade = 90
   let pessoa = (nome, 90)
   let mistery1 = (\n -> n^2 + 1)
   let mystery2 = (\str -> "Mrs. " ++ str)
   let info = ("Idades", [30, 56, 12, 29])
   ```

## Programação


1. Crie uma função `anoIdade :: Int -> (Int, Int)` que, dado o ano de nascimento de uma pessoa, retorne uma tupla contendo o próprio ano de nascimento e a idade da pessoa no ano atual.

2. Crie uma função `selectName :: (String,Int,Int) -> String` que receba uma tupla contendo nome, ano de nascimento e idade de uma pessoa, e retorne seu nome.

3. Crie uma função `allNames :: [(String,Int,Int)] -> [String]` que receba uma lista com dados de pessoas (nome, ano de nascimento e idade) e retorne uma lista contendo todos os nomes. Resolva este exercício usando uma função de alta ordem e a função `selectName`.

4. Resolva o exercício anterior usando uma função anônima que substitua a função `selectName`.

5. Crie uma função `distance :: (Float, Float) -> (Float, Float) -> Float` que receba as coordenadas de 2 pontos num espaço bidimensional e calcule a [distância entre eles usando o teorema de pitágoras](https://pt.khanacademy.org/math/basic-geo/basic-geometry-pythagorean-theorem/pythagorean-theorem-distance/a/distance-formula).

6. Você tem uma lista de tuplas contendo, cada uma, um nome de empresa e a URL de seu site web. Escreva uma função que receba a lista de tuplas e retorne uma lista de links em HTML, conforme o exemplo abaixo:
   Entrada:  
   ```
   [(“Google”, “http://www.google.com”), (“Intel”,”http://www.intel.com”)]  
   ```
   Saída:  
   ```
   [“<a href=“http://www.google.com”>Google</a>”,  
    “<a href=”http://www.intel.com”>Intel</a>”]  
   ```
   Obs.: Quando for colocar aspas dentro de uma String, use uma barra invertida antes (\") para evitar que a aspa seja interpretada como fim da String.
   
   

7. Suponha que uma tupla `(Float, Float, Float, Float)` represente um retângulo `(x,y,w,h)` com vértice superior esquerdo posicionado no ponto `x,y` e com largura e altura dados por `w` e `h`. Considerando isso, crie uma função que receba uma lista de retângulos e retorne outra lista com a área de cada um.

8. Resolva o exercício anterior usando uma função lambda.

9. O módulo Data.List do Haskell tem várias funções muito úteis para manipular listas. Para usar as funções deste módulo, é preciso importá-lo no início do programa ou no interpretador interativo (`import Data.List`). Neste exercício, você irá testar a função [sort](http://zvon.org/other/haskell/Outputlist/sort_f.html), disponível neste módulo. Para isso, crie as funções `testSort1 :: [Int] -> [Int]` e `testSort2 :: [String] -> [String]`, aplicando a função sort respectivamente a uma lista de inteiros e a uma lista de strings.

10. Ainda no módulo Data.List, há uma função chamada [sortBy](http://zvon.org/other/haskell/Outputlist/sortBy_f.html), que é mais genérica que sort pois recebe como argumento uma função de comparação. Forneça dois exemplos de uso de sortBy para uma lista de strings, usando diferentes funções de comparação.


11. A função [zip](http://zvon.org/other/haskell/Outputprelude/zip_f.html) recebe duas listas e cria uma lista de tuplas, combinando cada par de elementos na mesma posição nas listas. Escreva uma função `testZip :: [Int] -> [Int]` que aplique `zip` e depois obtenha somente as tuplas cuja soma de seus elementos seja menor que 10.




