# Prática: Programação lógica em Prolog


A execução de programas Prolog é implementada como um processo de busca sobre a base que contém fatos e regras. Veja mais sobre isso nestes [slides](https://docs.google.com/presentation/d/197tgx5dL0qi8TpT86D7N-iZURokOtCrf9i45OJam59E/edit?usp=sharing). Nesta prática, vamos fazer alguns exercícios que ilustram esse processo.


## Aquecimento

1. Baixe o programa [simpsons-flintstones.pl](simpsons-flintstones.pl).

2. Faça as execuções passo-a-passo que estão nos slides.

**Lembrete:** Para desativar o modo trace, use nodebug.

   
## Exercícios com trace


1. Copie o código Prolog abaixo para dentro de um arquivo .pl. 

   ```prolog
   ismember(X, [X|_]).        % ismember(X, [Head|Tail]) is true if X = Head 
                              % that is, if X is the head of the list
   ismember(X, [_|Tail]) :-   % or if X is a member of Tail,
     ismember(X, Tail).       % ie. if ismember(X, Tail) is true.
   ```

2. Carregue o arquivo no SWI-Prolog e execute as seguintes consultas no modo `trace`. Sempre que o interpretador parar mostrando um resultado, digite ";" para continuar. O prompt do interpretador vai ser mostrado quando não houver mais continuidade possível.
   ```
   ?- trace.
   [trace]  ?- ismember(a,[a,b,c,d]).
   [trace]  ?- ismember(a,[b,c,d,a]).
   [trace]  ?- ismember(z,[a,b,c,d]).
   [trace]  ?- ismember(X,[a,b,c]).
   ```

## Exercícios com cut

Em Prolog, o operador **!** (leia-se: cut) é usado para **impedir o retrocesso (backtracking)** na avaliação de um predicado. Por exemplo, na avaliação de uma regra, se uma variável X recebe um valor 1 e depois é feito um cut, o processo de inferência Prolog vai considerar que o valor 1 é a única instância possível para X, mesmo que existam outras possibilidades na base de dados. 


1. Copie o código Prolog abaixo para um arquivo .pl. 

   ```prolog
   b(2).
   b(3).
   c(4).
   c(5).
   regra1(X, Y) :- b(X), c(Y).
   regra2(X, Y) :- b(X), !, c(Y).
   ```

2. Considerando o programa acima, qual será o resultado da seguinte consulta? 

   ```
   ?- regra1(X,Y).
   ```
    Execute a consulta e verifique se sua resposta está correta. Obs: use **;** para buscar todas as respostas possíveis. 

3. Ainda considerando o mesmo programa, qual será o resultado da seguinte consulta? 
   ```
   ?- regra2(X,Y).
   ```
    Execute a consulta para verificar se sua resposta está correta, lembrando de usar **;** para buscar todas as respostas possíveis. 

4. Ative o modo de rastreamento (**trace**) e re-execute as consultas acima. Observe a ocorrência de **backtracking (Redo)** nos 2 casos. 

5. Baixe o programa [fatoriais.pl](fatoriais.pl) e carregue-o no SWI-Prolog. 

6. Execute a consulta abaixo e use **;** para verificar se há outras respostas possíveis. 
   ```
   ?- fatv1(3,N).
   ```

7. A consulta acima deve ter gerado um erro depois que for digitado **;**. Você consegue identificar o motivo deste erro? 

8. Para melhor entender o erro acima, ative o modo **trace** e re-execute a consulta: 
   ```
   ?- trace.
   true.
   [trace]  ?- fatv1(3,N).
   ```
   Dica: quando você cansar de rastrear a execução passo-a-passo, digite a (abort) no lugar de Enter. 

9. Analise o código em [fatoriais.pl](fatoriais.pl), comparando os predicados ``fatv2`` e ``fatv3`` com o predicado ``fatv1``. 

10. Execute as consultas abaixo, digitando **;** após cada resposta. Compare os resultados com os da consulta anterior (``fatv1``). 
    ```
    ?- fatv2(3,N).
    ?- fatv3(3,N).
    ```

11. Ative o modo **trace** e re-execute as consultas acima, acompanhando suas execuções. 

12. Você consegue identificar alguma vantagem de ``fatv2`` sobre ``fatv3``? 

