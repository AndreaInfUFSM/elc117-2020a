% Aviso: Caso rode o programa como está, avisos serão dados pelo SWIPL por conta dos fatos estarem em locais separados e não agrupados junto de outros fatos do mesmo tipo.

% 2. - Modifique o programa expressando as seguintes afirmações em um ou mais fatos Prolog:
% 2 - "Joana nasceu em Salvador."
nasceu_em(joana, salvador).
% 2 - "Joana tem 22 anos."
idade(joana, 22).
% 2 - "Michel nasceu em Paris e tem 40 anos."
nasceu_em(michel, paris).
idade(michel, 40).

% 3 - Expresse as seguintes perguntas em consultas Prolog (digite-as no interpretador):

% 3 - "José nasceu no Brasil?"
% 3 - brasileiro(jose). -> false

% 3 - "Quais são as pessoas nascidas na Europa?"
% 3 - europeu(X). -> michel ; false

% 3 - "Quais são as pessoas com mais de 30 anos?"
% 3 - idade(Pessoa, Idade), Idade > 30. -> Pessoa = joao, Idade = 32 ; Pessoa = michel, Idade = 40 ; false. 

% 3 - "Quem são os brasileiros com menos de 30 anos?"
% 3 - brasileiro(Pessoa), idade(Pessoa, Idade), Idade < 30. -> Pessoa = andre, Idade = 25 ; Pessoa = joana, Idade = 22 ; false. 

% 4 - Crie um predicado maisVelho(A,B) que permita deduzir se a pessoa A é mais velha que a pessoa B. Use o predicado idade.
maisVelho(Velho, Novo) :- idade(Velho, IdadeVelho), idade(Novo, IdadeNovo), IdadeVelho > IdadeNovo.

% 5 - Em Prolog, o operador is serve para calcular uma expressão aritmética e atribuir seu valor a uma variável.
soma(A,B,C) :- C is A + B. 
pred(A,B,C) :- X is (A+B)^2, C is X*2+1.
% 5 - Verifique qual será o resultado das consultas abaixo:
% 5 - soma(8, 5, 5). -> false
% 5 - pred(3, 2, X). -> 51.

% 6 - Usando o operador is, crie um predicado anoNasc(P,A) que permita deduzir o ano aproximado de nascimento (A) de uma pessoa (P). Use o predicado idade e o ano corrente como referência.
anoNasc(P, A) :- idade(P, I), A is (2020 - I).

% 7 - Em Prolog, listas são tipos de dados nativos. Como em Haskell e muitas outras linguagens, uma lista se representa com colchetes. 
% 7 - Existem também vários predicados pré-definidos que manipulam listas. Teste as consultas abaixo:
% 7 - member(a, [a,b,c]). -> true ; false.
% 7 - member(x, [a,b,c]). -> false.
% 7 - member(A, [a,b,c]). -> A = a ; A = b ; A = c ; false.
% 7 - member(a, [a,b,c,a]). -> true ; true.
% 7 - length([a,b,c], L). -> L = 3.
% 7 - length([], X). -> X = 0.
% 7 - length(a, X). -> Erro, a não é uma lista.
% 7 - length([a,b,c], 2). -> false.
% 7 - nextto(1, 2, [1,2,3]). -> true ; false. 
% 7 - nextto(2, Y, [1,2,3]). -> Y = 3 ; false.
% 7 - nextto(4, X, [1,2,3]). -> false.
% 7 - nextto(1, 2, [1,2,3,1,2]). -> true ; true ; false.

% 8 - Usando lista em Prolog, crie um predicado isVowel(X) que verifique se um dado símbolo X é uma vogal. Dica: você vai precisar de uma lista de vogais possíveis: [a,e,i,o,u].
isVowel(X) :- member(X, [a, e, i, o, u]).

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