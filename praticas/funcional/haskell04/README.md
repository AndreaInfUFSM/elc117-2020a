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



