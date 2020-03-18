# Prática: Programação funcional em Haskell

## 1. Preparação

Para este exercício você vai usar o ambiente GHC, que inclui um compilador e um interpretador para Haskell, além de várias bibliotecas de funções. Esse ambiente está disponível de várias formas, inclusive online, em nuvem.

Para usar o GHC **online**, uma boa opção é o [Repl.it](http://repl.it).

Para usar em Windows, Linux ou MacOS, baixe a Haskell Platform: http://www.haskell.org/platform/.


Se você instalar a plataforma Haskell no **Linux**, use o GHCi, que é o interpretador Haskell:
```
user@host:~$ ghci
GHCi, version 8.4.1: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
Prelude>
```

Se você instalar a plataforma Haskell no **Windows**, abra o WinGhci, que é uma interface gráfica para o interpretador Haskell.

## 2. Primeiros passos

### 2.1. Interação básica

- Usar o interpretador no modo **interativo** é uma boa opção para testar/prototipar funções. Basta escrever chamadas de funções na linha de comando do interpretador, que ele vai executá-las e mostrar o resultado. As funções já devem estar definidas, ou você pode declará-las usando `let`.

- Para definir novas funções, é preferível colocá-las em um arquivo de programa, por exemplo `main.hs`. Para isso, você pode usar qualquer editor/IDE que suporte a sintaxe do Haskell. No ambiente Repl.it há um editor integrado

- Para **executar** um programa, ele precisa ser **carregado** no interpretador. A forma de fazer isso depende bastante do ambiente que você está usando. 
  - No Repl.it: clique em `run`. Isso vai carregar o programa e executar uma função `main`, se houver. Se a função `main` não existir, vai ser mostrado um erro no interpretador, mas o restante das funções definidas será carregado e poderá ser testado.
  - No Linux: `Prelude> :load main.hs` ou `Prelude> :l main.hs`.
  - No Windows: `Ctrl-L` vai abrir uma tela de seleção do programa.

- Para sair do interpretador no Linux: `Prelude> :q` ou `Ctrl-D`.



### 2.2. Execução no interpretador


Nesta aula, vamos trabalhar com funções pré-definidas e também com funções que você vai definir. Você vai começar a se acostumar com a sintaxe da linguagem Haskell para definir funções tipadas (veja [slides](https://docs.google.com/presentation/d/1y-4QgUU2PrwF-OnersZDP2B4qCQAz14kCMJ3SrU7rKo/edit?usp=sharing)).


1. Copie as funções abaixo para um arquivo de programa Haskell (.hs) ou abra [este programa no Repl.it](https://repl.it/@AndreaSchwertne/haskell01). Este programa tem vários exemplos da sintaxe de Haskell que são diferentes de C, por exemplo, mas quem sabe programar provavelmente conseguirá entender o código.

   ```haskell
   main = do 
     putStrLn "Vamos testar as funcoes abaixo!"
     
   -- Eleva um numero ao quadrado
   -- Aqui temos um comentario!
   square :: Int -> Int
   square x = x^2
  
   -- Verifica se um numero eh par (usa if/then/else para expressar funcao condicional)
   -- A funcao 'mod' retorna resto da divisao inteira
   isEven :: Int -> Bool
   isEven n = if mod n 2 == 0 then True else False
   -- Ou simplesmente:
   -- isEven n = mod n 2 == 0

   -- Gera um numero a partir de um caracter 
   -- Note esta estrutura condicional em Haskell, usando'guardas' (|)
   encodeMe :: Char -> Int
   encodeMe c 
      | c == 'S'  = 0
      | c == 'N'  = 1
      | otherwise = undefined

   -- Calcula o quadrado do primeiro elemento da lista
   -- Note que '[Int]' designa uma lista de elementos do tipo Int 
   squareFirst :: [Int] -> Int
   squareFirst lis = (head lis)^2

   -- Verifica se uma palavra tem mais de 10 caracteres
   isLongWord :: String -> Bool -- isso é o mesmo que: isLongWord :: [Char] -> Bool
   isLongWord s = length s > 10
   ```

2. Abra o interpretador Haskell e teste as funções em cada um dos casos abaixo. 

   ```haskell
   square 2 + 1
   square (2+1)
   isEven 8
   isEven 9
   encodeMe 'S'
   squareFirst [-3,4,5]
   isLongWord "test"
   ```

3. As aplicações de funções abaixo vão gerar **erros**. Deduza qual o motivo.

   ```haskell
   sQuare 2
   square 'A'
   isEven 8.1
   encodeMe "A"
   squareFirst []
   isLongWord 'test'
   ```


## 3. Programação

### 3.1. Definindo novas funções

Nos exercícios abaixo, você vai definir funções tipadas. Para saber mais sobre a sintaxe de funções tipadas, veja nos [slides](https://docs.google.com/presentation/d/1y-4QgUU2PrwF-OnersZDP2B4qCQAz14kCMJ3SrU7rKo/edit?usp=sharing). 

1. Crie uma função `sumSquares :: Int -> Int -> Int` que receba dois números x e y e calcula a soma dos seus quadrados.

2. Defina uma função `calcExprInt :: Int -> Int` que receba um número `n` e calcule `3*n^2 + 1`.

3. Crie uma função `isNegative :: Int -> Bool` que receba um número `n` e vefique se ele é negativo.

4. Crie uma função `calcExprFloat :: Float -> Float` que receba um número `n` e calcule `n^2 + n/2 + 1`.

5. Defina uma função `addPrefix :: String -> String` que receba um nome (tipo `String`) e adicione a string `"Mr. "` no início do nome. Use o operador `++` para concatenar strings (ou qualquer lista do mesmo tipo).


6. Crie uma função `addThisPrefix :: String -> String -> String` que receba duas strings e concatene-as.


7. Crie uma função `startsWithA :: String -> Bool` que receba uma string e verifique se ela inicia com o caracter `'A'`.

8. Defina uma função `isVerb :: String -> Bool` que receba uma string e verifique se ela termina com o caracter `'r'`. Antes desse exercício, teste no interpretador a função pré-definida `last`, que retorna o último elemento de uma lista. Dica: conheça também o [list monster](http://s3.amazonaws.com/lyah/listmonster.png), do autor Miran Lipovača :-)

9. Crie uma função `isVowel :: Char -> Bool` que receba um caracter e verifique se ele é uma vogal minúscula.

10. Crie uma função `hasEqHeads :: [Int] -> [Int] -> Bool` que verifique se 2 listas possuem o mesmo primeiro elemento. Use a função `head` e o operador lógico `==` para verificar igualdade.

11. A função pré-definida `elem` recebe um elemento e uma lista, e verifica se o elemento está presente ou não na lista. Teste essa função no interpretador: 
   ```haskell
   elem 3 [1,2,3]
   elem 4 [1,2,3]
   elem 'c' "abcd"
   elem 'A' "abcd"
   ```
12. Use a função `elem` para criar uma função `isVowel2 :: Char -> Bool` que verifique se um caracter é uma vogal, tanto maiúscula como minúscula.





### 3.2. Usando funções de alta ordem

Para fazer os exercícios abaixo, você vai usar as **funções de alta ordem** `map` e `filter` (veja [slides](https://docs.google.com/presentation/d/1UkwNMUUMlN2lrYtRXiauv8Fh5GwygL06zqdMzpizL3g/edit?usp=sharing)).


Muitos desses exercícios também vão usar funções que você definiu na parte anterior desta prática (procure lembrar delas!). Sempre que possível, reuse funções já definidas. Quando não houver uma função já definida, você deverá criá-la.


1. Crie uma função `testAddPrefix :: [String] -> [String]` que receba uma lista de nomes e aplique a função `addPrefix` em cada nome.

2. Crie uma função `onlyVowels :: String -> String` que receba uma string e retorne outra somente contendo suas vogais. Por exemplo: `onlyVowels "abracadabra"` vai retornar `"aaaaa"`.


3. Escreva uma função `onlyNegatives :: [Int] -> [Int]` que, dada uma lista de números, selecione somente os que forem negativos.

4. Escreva uma função que, dada uma lista de números, aplique `calcExprFloat` para cada número da lista.

5. Crie uma função `onlyLongWords :: [String] -> [String]` que receba uma lista de strings e retorne somente as strings longas (use a função `isLongWord` definida no código de exemplo no início da prática).

6. Escreva uma função que receba uma lista de números e retorne somente aqueles que forem pares.

7. Crie uma função que receba uma lista de palavras e retorne outra lista com somente aquelas que terminarem com a letra 'r'.

8. Escreva uma função que receba uma lista de números e retorne somente os que estiverem entre 1 e 100, inclusive. Você vai ter que criar uma função auxiliar e usar `&&` para expressar o `and` lógico em Haskell.

9. Crie uma função que receba uma string e retorne o número de espaços nela contidos. Dica 1: você vai precisar de uma função que identifica espaços. Dica 2: aplique funções consecutivamente, isto é, use o resultado de uma função como argumento para outra. 



10. Escreva uma função que, dada uma lista de idades de pessoas no ano atual, retorne uma lista somente com as idades de quem nasceu depois de 1980. Para testar a condição, sua função deverá subtrair a idade do ano atual. 


11. Neste exercício, você vai criar uma função equivalente a `elem`, mas usando uma função de alta ordem. Crie a função `charFound :: Char -> String -> Bool` que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:
    ```
    > charFound 'a' ""  
    False  
    > charFound 'a' "uau"  
    True  
    ```



## 4. Para saber mais

Consulte as seções abaixo no livro [Learn you a Haskell for Great Good!](http://learnyouahaskell.com), de Miran Lipovača:
- [Funções de alta ordem (map, filter, etc.)](http://learnyouahaskell.com/higher-order-functions) 
- [Funções anônimas](http://learnyouahaskell.com/higher-order-functions#lambdas): vamos usá-las mais adiante
