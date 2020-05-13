# Prática: Programação lógica em Prolog



## Estude antes 

Antes de fazer os exercícios abaixo, consulte os [slides](../../../slides) sobre programação lógica.


## Preparação

Nos exercícios abaixo, considere a seguinte base de fatos e regras sobre pessoas e localizações geográficas ([pratica1.pl](pratica1.pl)):

   ```prolog
   localizado_em(santa_maria, rs). 
   localizado_em(salvador, bahia). 
   localizado_em(rs, brasil). 
   localizado_em(bahia, brasil). 
   localizado_em(paris, franca). 
   localizado_em(franca, europa). 
   
   nasceu_em(andre, santa_maria). 
   nasceu_em(joao, salvador). 
   nasceu_em(X, Y) :- localizado_em(Z, Y), nasceu_em(X, Z). 
   
   mora_em(andre, paris). 
   mora_em(joao, salvador). 
   mora_em(X, Y) :- localizado_em(Z, Y), mora_em(X, Z). 

   idade(andre, 25). 
   idade(joao, 32). 

   gaucho(X) :- nasceu_em(X, rs). 
   brasileiro(X) :- nasceu_em(X, brasil). 
   europeu(X) :- nasceu_em(X, europa).
   ```


Você pode salvar este programa e abri-lo com SWI-Prolog, caso esteja instalado localmente. Também pode copiá-lo para o SWIGH: https://swish.swi-prolog.org/

Depois de tentar um primeiro contato com um desses ambientes, veja este [vídeo](https://drive.google.com/file/d/13mAGl5BLEcruIgG7tLuxa2TnoeRKQdx5/view?usp=sharing) que explica o programa e sua execução no SWISH.

## Exercícios

1. Depois de carregar o programa, execute cada uma das consultas abaixo no interpretador interativo. Observe as respostas e compare-as com os fatos e regras do programa.

   ```prolog
   ?- europeu(andre).
   ?- gaucho(andre).
   ?- brasileiro(X).
   ```
   Obs.: Quando a resposta não tiver um ponto no final, tecle "Enter" ou "." após a primeira resposta, para evitar que se procurem outras, OU tecle ";" após cada resposta para descobrir se existem outras.
   
2. Modifique o programa expressando as seguintes afirmações em um ou mais **fatos** Prolog:

   ```
   "Joana nasceu em Salvador."
   "Joana tem 22 anos."
   "Michel nasceu em Paris e tem 40 anos." 
   ```
   
3. Expresse as seguintes perguntas em **consultas** Prolog (digite-as no interpretador):

   ```
   "José nasceu no Brasil?"
   "Quais são as pessoas nascidas na Europa?"
   "Quais são as pessoas com mais de 30 anos?"
   "Quem são os brasileiros com menos de 30 anos?"
   ```
   
4. Crie um predicado `maisVelho(A,B)` que permita deduzir se a pessoa A é mais velha que a pessoa B. Use o predicado idade. Exemplo de uso:

   ```prolog
   ?- maisVelho(joao, andre).
   true.
   ```

5. Em Prolog, o operador `is` serve para calcular uma expressão aritmética e atribuir seu valor a uma variável, como nos exemplos abaixo:

   ```prolog
   soma(A,B,C) :- C is A + B. 
   pred(A,B,C) :- X is (A+B)^2, C is X*2+1.
   ```
   
   Sabendo disso, incorpore o código acima ao programa e verifique qual será o resultado das consultas abaixo:

   ```prolog
   ?- soma(8,5,S).
   ?- pred(3,2,X).
   ```

6. Usando o operador `is`, crie um predicado `anoNasc(P,A)` que permita deduzir o ano aproximado de nascimento (A) de uma pessoa (P). Use o predicado idade e o ano corrente como referência. Exemplo de uso: 

   ```prolog
   ?- anoNasc(joao, A).
   A = 1988.
   ```
   
7. Em Prolog, listas são tipos de dados nativos. Como em Haskell e muitas outras linguagens, uma lista se representa com colchetes. Existem também vários predicados pré-definidos que manipulam listas. Teste (copie e cole) as consultas abaixo com os predicados `member`, `length` e `nextto`(em caso de erro, identifique o motivo):

   ```prolog
   ?- member(a, [a,b,c]).
   ?- member(x, [a,b,c]).
   ?- member(A, [a,b,c]).
   ?- member(a, [a,b,c,a]).
   ?- length([a,b,c], L).
   ?- length([], X).
   ?- length(a, X).
   ?- length([a,b,c], 2).
   ?- nextto(1, 2, [1,2,3]).
   ?- nextto(2, Y, [1,2,3]).
   ?- nextto(4, X, [1,2,3]).
   ?- nextto(1, 2, [1,2,3,1,2]).
   ```

8. Usando lista em Prolog, crie um predicado `isVowel(X)` que verifique se um dado símbolo X é uma vogal. Dica: você vai precisar de uma lista de vogais possíveis: `[a,e,i,o,u]`. Exemplo de uso:

   ```prolog
   ?- isVowel(a).
   true.
   ?- isVowel(b).
   false.
   ```
