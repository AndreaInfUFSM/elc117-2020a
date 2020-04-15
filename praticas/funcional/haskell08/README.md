# Prática: Prática de programação funcional e entrega no GitHub Classroom


## Orientações

Nestes exercícios, você vai usar vários recursos de programação funcional. O material de apoio para isso está distribuído nos diversos slides organizados por assuntos, disponíveis [na seção de slides](https://github.com/AndreaInfUFSM/elc117-2020a/tree/master/slides) do repositório da disciplina.

Nesta aula, você irá entregar estes exercícios para se familizarizar com a plataforma GitHub Classroom, que usaremos para entrega de trabalhos. Você pode também entregar quaisquer outros exercícios que tenha realizado, mesmo que parcialmente. Não se preocupe com nota, pois essa atividade não vale como trabalho de Haskell, é apenas uma preparação para o trabalho que será proposto futuramente. Veja ao final desta prática as instruções para entrega.


## Exercícios


Coloque estes exercícios em um arquivo nomeado `haskell08.hs`.


1. Escreva uma função **recursiva** `isBin :: String -> Bool` para verificar se uma dada String representa um número binário, ou seja, contém apenas caracteres `'0'` ou `'1'`. As únicas funções pré-definidas autorizadas aqui são `head` e `tail`. Exemplos de uso de `isBin`:

   ```
   > isBin "101010"
   True
   > isBin "1212"
   False
   > isBin ""
   False
   ```

2. Reescreva a função acima de forma não-recursiva. Dê outro nome para ela, por exemplo `isBin'`. Aqui você pode usar quaisquer funções auxiliares pré-definidas em Haskell. 

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
   
   
4. Reescreva a função do exercício anterior de forma **não-recursiva**, usando funções pré-definidas em Haskell. Dê outro nome para a função (por exemplo, `bin2dec'`).

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
   
6. Implemente uma dessas funções: `isHex :: String -> Bool` ou `hex2dec :: String -> Int` ou `dec2hex :: Int -> String`, que são semelhantes às dos exercícios anteriores, porém com números hexadecimais no lugar de números binários. Aqui está tudo liberado: você pode escolher qual das funções irá implementar, sem restrições sobre como deve fazer isso.

## Entrega

Os trabalhos da disciplina, conforme explicado na primeira aula, serão entregues em repositórios no GitHub. Para isso, usaremos a plataforma GitHub Classroom, que gera um "convite" para cada trabalho e gera um repositório para cada aluno entregá-lo. Ou seja, o GitHub Classroom facilita o gerenciamento de repositórios para os trabalhos, algo que você teria que fazer manualmente se usasse apenas o GitHub (sem o Classroom). Cada trabalho será entregue em um repositório associado a cada aluno. 

Para fazer entregas, você deverá fazer seu cadastro no GitHub, caso ainda não tenha. Caso já possua, você pode aproveitá-lo, se desejar. Esse cadastro será feito uma única vez e você **deverá usar o mesmo username no GitHub para todos os trabalhos**.

Para entregar estes exercícios, que chamaremos de `t0`, siga esses passos:

1. Clique no link de convite para o exercício `t0`: https://classroom.github.com/a/qjvRfCsv Ao clicar neste link, será criado um repositório para você colocar seus arquivos.

2. Há várias maneiras de colocar arquivos dentro deste repositório. O mais simples, para começar, é usar interface web do GitHub para envio de arquivos: opção **Upload files**. A forma mais "profissional" é usar um cliente Git para manter um repositório local no seu computador, e sincronizar com o repositório remoto no GitHub de tempos em tempos, fazendo operações de commit e push. Se quiser aprender mais sobre isso, você pode solicitar auxílio da professora e do monitor, que indicarão material de apoio para você.
