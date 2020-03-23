# Prática: Programação funcional em Haskell

## 1. Relembrando o ambiente de execução

### 1.1. GHC online ou local

Para este exercício você vai continuar usando o ambiente GHC, que inclui um compilador e um interpretador para Haskell, além de várias bibliotecas de funções. Esse ambiente está disponível de várias formas, inclusive online, em nuvem.

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


### 1.2. Interação básica

- Usar o interpretador no modo **interativo** é uma boa opção para testar/prototipar funções. Basta escrever chamadas de funções na linha de comando do interpretador, que ele vai executá-las e mostrar o resultado. 

- Para definir novas funções, é preferível colocá-las em um arquivo de programa, por exemplo `main.hs`. Para isso, você pode usar qualquer editor/IDE que suporte a sintaxe do Haskell. No ambiente Repl.it há um editor integrado.

- Para **executar** um programa, ele precisa ser **carregado** no interpretador. A forma de fazer isso depende bastante do ambiente que você está usando. 
  - No Repl.it: clique em `run`. Isso vai carregar o programa e executar uma função `main`, se houver. Se a função `main` não existir, vai ser mostrado um erro no interpretador, mas o restante das funções definidas será carregado e poderá ser testado.
  - No Linux: `Prelude> :load main.hs` ou `Prelude> :l main.hs`.
  - No Windows: `Ctrl-L` vai abrir uma tela de seleção do programa.

- Para sair do interpretador no Linux: `Prelude> :q` ou `Ctrl-D`.



## 2. Funções de alta ordem e funções anônimas (lambda)


Nesta aula, vamos trabalhar com [funções de alta ordem](https://docs.google.com/presentation/d/1UKi2vkIMiNdScn_m7CidoSBzZ9b4j1ppCSPKYYFjxIk/edit?usp=sharing) e [funções anônimas](https://docs.google.com/presentation/d/1zxqEsvCegZhxfwjjxElIkNjY-pqmLvpEnq9Mt0YBR9Y/edit?usp=sharing), também conhecidas como funções lambda.


1. Copie as funções abaixo para um arquivo de programa Haskell (.hs) ou abra [este programa no Repl.it](https://repl.it/@AndreaSchwertne/haskell02). 

   ```haskell
   main = do 
     putStrLn "Vamos testar as funcoes abaixo!"
     
   square :: Int -> Int
   square x = x^2
  
   squareAll :: [Int] -> [Int]
   squareAll lis = map square lis 
   
   ficaemcasa :: String -> String
   ficaemcasa fulano = fulano ++ ", fica em casa!"
   
   quarentena :: [String] -> [String]
   quarentena pessoas = map ficaemcasa pessoas
   
   podesair :: String -> Bool
   podesair profissao = profissao == "Medico"
   
   idadeadulta :: Int -> Bool
   idadeadulta idade = idade >= 18
   ```

2. Qual será o resultado das aplicações de funções abaixo? Confira no interpretador.

   ```haskell
   squareAll [1,2,3]
   filter (>10) (squareAll [2, 3, 4])
   quarentena ["Huguinho", "Zezinho", "Luizinho"]
   filter idadeadulta [4, 10, 18, 24, 9]
   filter podesair ["Estudante", "Medico", "Professor"]
   map (\s -> s ++ ", fica em casa!") ["Rafael", "Rafaela"]
   ```

## 3. Programação


1. Infectologistas consideram que um indivíduo tem febre quando sua [temperatura corpórea está acima de 37,8oC](https://drauziovarella.uol.com.br/doencas-e-sintomas/febre/). Escreva uma função `verificaFebre :: [Int] -> [Int]` que, dada uma lista de temperaturas de indivíduos, selecione aquelas que representam febre. Resolva esta questão definindo uma função auxiliar que verifica se uma dada temperatura é febre ou não.

2. Resolva a questão anterior sem definir uma função auxiliar.

3. No interpretador, os códigos `map (+2) [1,2,3]` e `map (\m -> n + 2) [1,2,3]` produzem o mesmo resultado. Qual deles usa função lambda?

4. O que faz o código `map (\n -> n^2 + 2) [1,2,3]`? 

5. Escreva uma função tipada que calcule `a^2 + a + 2` para cada elemento `a` de uma lista `lis`.


## 4. Para saber mais

Consulte as seções abaixo no livro [Learn you a Haskell for Great Good!](http://learnyouahaskell.com), de Miran Lipovača:
- [Funções de alta ordem (map, filter, etc.)](http://learnyouahaskell.com/higher-order-functions) 
- [Funções anônimas](http://learnyouahaskell.com/higher-order-functions#lambdas): vamos usá-las mais adiante
