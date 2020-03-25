# Prática: Programação funcional em Haskell

## Orientações

Estes exercícios são para você praticar mais a programação funcional com Haskell. A maioria das funções vai precisar de poucas linhas de código, mas são linhas poderosas :-D  Na maioria dos casos, são operações que precisariam de muito código em uma linguagem procedimental e imperativa como C.


**Atenção!** 

1. Você pode (e deve) procurar funções pré-definidas em bibliotecas Haskell que auxiliem na resolução dos exercícios. **Porém**, se você encontrar alguma função pré-definida que faz tudo o que for solicitado num exercício, resolva o exercício com e sem essa função, para explorar várias formas de resolver problemas.

2. Os exercícios não são para entregar, não se preocupe com nota agora. Use o Discord da disciplina para postar dúvidas e soluções, converse com colegas, "brinque" com a linguagem, use o interpretador interativo para testar funções rapidamente. Procure pensar diferente do que costuma fazer em linguagens imperativas. Quebre cada função em outras funções, reuse as que você já conhece, procure outras. 


## Funções


1. Crie uma função `isVowel :: Char -> Bool` que verifique se um caracter é uma vogal ou não.

2. Escreva uma função `addComma`, que adicione uma vírgula no final de cada string contida numa lista.

3. Crie uma função `htmlListItems :: [String] -> [String]`, que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML. Resolva este exercício COM e SEM [funções anônimas (lambda)](https://wiki.haskell.org/Anonymous_function). Exemplo de uso da função:

   ```
   > htmlListItems ["abra", "ca", "dabra"]
   ["<LI>abra</LI>", "<LI>ca</LI>", "<LI>dabra</LI>"]
   ```

4. Defina uma função que receba uma string e produza outra retirando as vogais, conforme os exemplos abaixo. Resolva este exercício COM e SEM [funções anônimas (lambda)](https://wiki.haskell.org/Anonymous_function).

   ```
   > semVogais "andrea"
   "ndr"
   > semVogais "xyz"
   "xyz"
   > semVogais "ae"
   ""
   ```

5. Defina uma função que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. Resolva este exercício COM e SEM [funções anônimas (lambda)](https://wiki.haskell.org/Anonymous_function). Exemplos:

   ```
   > codifica "Rio Grande do Sul"
   "--- ------ -- ---"
   > codifica ""
   ""
   ```

6. Escreva uma função `firstName :: String -> String` que, dado o nome completo de uma pessoa, obtenha seu primeiro nome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome. Dica: estude funções pré-definidas em Haskell (List operations -> Sublists) em http://hackage.haskell.org/package/base-4.10.1.0/docs/Prelude.html#g:18.  Exemplos de uso da função:

   ```
   > firstName "Anderson Silva"
   "Anderson"
   > firstName "JON BON JOVI"
   "JON"
   ```

7. Escreva uma função `isInt :: String -> Bool` que verifique se uma dada string só contém dígitos de 0 a 9. Exemplos:

   ```
   > isInt "901"
   True
   > isInt "2014a"
   False
   ```

8. Escreva uma função `lastName :: String -> String` que, dado o nome completo de uma pessoa, obtenha seu último sobrenome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome. Exemplos de uso da função:

   ```
   > lastName "Anderson Silva"
   "Silva"
   > lastName "JON BON JOVI"
   "JOVI"
   ```

9. Escreva uma função `userName :: String -> String` que, dado o nome completo de uma pessoa, crie um nome de usuário (login) da pessoa, formado por: primeira letra do nome seguida do sobrenome, tudo em minúsculas. Dica: estude as funções pré-definidas no módulo [Data.Char](http://hackage.haskell.org/package/base-4.10.1.0/docs/Data-Char.html), para manipulação de maiúsculas e minúsculas. Você precisará carregar este módulo usando `import Data.Char` no interpretador ou no início do arquivo do programa.

   Exemplos de uso da função:
   ```
   > userName "Anderson Silva"
   "asilva"
   > userName "JON BON JOVI"
   "jjovi"
   ```
   
10. Escreva uma função `encodeName :: String -> String` que substitua vogais em uma string, conforme o esquema a seguir: a = 4, e = 3, i = 2, o = 1, u = 0.

    Exemplos de uso da função:

    ```
    > encodeName "Anderson Silva"
    "4nd3rs1n s2lv4"
    > encodeName "Badtz Maru"
    "B4dtz M4r0"
    ```
   
11. Escreva uma função `betterEncodeName :: String -> String` que substitua vogais em uma string, conforme este esquema: a = 4, e = 3, i = 1, o = 0, u = 00.  Exemplos de uso da função:

    ```
    > betterEncodeName "Anderson Silva"
    "4nd3rs0n s1lv4"
    > betterEncodeName "Badtz Maru"
    "B4dtz M4r00"
    ```

12. Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: strings de entrada com mais de 10 caracteres são truncadas, strings com até 10 caracteres são completadas com '.' até ficarem com 10 caracteres. Exemplo:

    ```
    > func ["palavras","paralelas","pedal","paralelepipedo"]
    ["palavras..","paralelas.","pedal.....","paralelepi"]
    ```
