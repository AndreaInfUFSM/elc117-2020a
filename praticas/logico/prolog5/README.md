# Prática: Programação lógica em Prolog



## Orientações 

Para fazer os exercícios abaixo, consulte os slides sobre [Listas e recursão em Prolog](https://docs.google.com/presentation/d/1JDEbRUr0QYoRjx-DHRUEeX-UWwKSCObI0UcJPYVoASM/edit?usp=sharing). 



## Aquecimento

Copie o código Prolog abaixo para um arquivo .pl. Este código define um predicado recursivo `repete`, que será verdadeiro caso a lista L contenha N repetições do símbolo C.


   ```prolog
   repete(0, _, []).
   repete(N, C, L) :- 
	N > 0,
	L = [C | T],
	N1 is N - 1,
	repete(N1, C, T).
   ```

Qual será o resultado das seguintes consultas?

   ```
   ?- repete(1,a,L).
   ?- repete(2,b,L).
   ?- repete(-2,b,L).
   ?- repete(2,a,[a,b,c]).
   ?- repete(3,a,[a|T]).
   ```

## Mais aquecimento

Em Prolog, usa-se `is` quando se deseja o resultado de uma expressão aritmética. Uma expressão pode conter operadores aritméticos habituais de soma, subtração, etc., e também podem usar [funções aritméticas](http://www.swi-prolog.org/pldoc/man?section=functions). Essas funções, ao contrário de predicados, podem ser usadas como em linguagens funcionais. Por exemplo, teste as seguintes consultas que usam funções aritméticas:

   ```
   ?- A is round(9.2).
   ?- B is sqrt(9).
   ?- C is sin(pi/2).
   ?- D is mod(9,3).
   ?- E is random(5).
   ```


## Exercícios
 
1. Defina um predicado `odd(N)` que seja verdadeiro se N for um número ímpar. Exemplo de uso:
   
   ```
   ?- impar(2).
   false.
   ?- impar(3).
   true.
   ``` 
   
2. Defina um predicado **recursivo** `hasN(L,N)` que seja verdadeiro se L for uma lista de N elementos.


3. Defina um predicado **recursivo** `inc99(L1,L2)`, de forma que L2 seja uma lista com todos os elementos de L1 acrescidos da constante `99`.

4. Defina um predicado **recursivo** `incN(L1,L2,N)`, de forma que L2 seja uma lista com todos os elementos de L1 acrescidos da constante `N`.

5. Defina um predicado **recursivo** `comment(L1,L2)`, de forma que L1 seja uma lista de strings e L2 tenha todos os elementos de L1 concatenados com o prefixo "%%". Dica: consulte predicados Prolog para [manipulação de strings](http://www.swi-prolog.org/pldoc/man?section=string-predicates).


6. Defina um predicado **recursivo** `onlyEven(L1,L2)`, de forma que L2 seja uma lista só com os elementos pares de L1, conforme o exemplo abaixo:

   ```
   ?- onlyEven2([1,2,3,4,5,6,7],L).
   L = [2, 4, 6].
   ```

7. Defina um predicado **recursivo** `countdown(N,L)`, de forma que L seja uma lista com os números [N, N-1, N-2, .., 1], sendo N um número positivo. Exemplo:

   ```
   ?- countdown(7,L).
   L = [7, 6, 5, 4, 3, 2, 1].
   ```

8. Defina um predicado **recursivo** `nRandoms(N,L)`, de forma que L seja uma lista com N números gerados aleatoriamente, conforme os exemplos abaixo:

   ```
   ?- nRandoms(3,L).
   L = [60, 92, 28].

   ?- nRandoms(6,L).
   L = [12, 81, 46, 19, 81, 21].

   ?- nRandoms(0,L).
   L = [].
   ```



9. Defina um predicado **recursivo** `potN0(N,L)`, de forma que L seja uma lista de potências de 2, com expoentes de N a 0. Exemplo de uso:

   ```
   ?- potN0(7,L).
   L = [128, 64, 32, 16, 8, 4, 2, 1]
   ```
   

10. Defina um predicado **recursivo** `zipmult(L1,L2,L3)`, de forma que cada elemento da lista L3 seja **o produto** dos elementos de L1 e L2 na mesma posição do elemento de L3. Exemplo:
   
    ```
    ?- zipmult([1,2,3],[2,2,2],L). 
    L = [2, 4, 6].
    ```

11. Defina um predicado **recursivo** `potencias(N,L)`, de forma que L seja uma lista com as N primeiras potências de 2, sendo a primeira 2^0 e assim por diante, conforme o exemplo abaixo:

    ```
    ?- potencias(5,L). 
    L = [1, 2, 4, 8, 16]
    ?- potencias(0,L).
    L = []
    ```
    Dica: defina um predicado auxiliar.


12. Defina um predicao **recursivo** `cedulas(V,L1,L2)`, que receba um valor V e uma lista L1 de cédulas com valores em Reais (R$), em ordem decrescente, e obtenha a lista L2 decompondo o valor V em 0 ou mais cédulas de cada tipo. Exemplo:

    ```
    ?- cedulas(423,[100,50,20,10,5,2,1],L).
    L = [4, 0, 1, 0, 0, 1, 1].
    ```
    Obs.: O resultado acima significa 4 cédulas de 100, 0 de 50, 1 de 20, e assim por diante.



