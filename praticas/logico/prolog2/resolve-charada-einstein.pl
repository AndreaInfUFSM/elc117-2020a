% Exemplo de programa em Prolog que resolve o seguinte problema
% de l�gica:
%
% 1. O ingl�s vive na casa vermelha. 
% 2. O sueco tem cachorros. 
% 3. O dinamarqu�s bebe ch�. 
% 4. A casa verde fica � esquerda da casa branca. 
% 5. O dono da casa verde bebe caf�. 
% 6. A pessoa que fuma Pall Mall cria p�ssaros. 
% 7. O dono da casa amarela fuma Dunhill. 
% 8. O homem que vive na casa do centro bebe leite. 
% 9. O noruegu�s vive na primeira casa. 
% 10. O homem que fuma Blends vive ao lado do que tem gatos. 
% 11. O homem que cria cavalos vive ao lado do que fuma Dunhill. 
% 12. O homem que fuma Bluemaster bebe cerveja. 
% 13. O alem�o fuma Prince. 
% 14. O noruegu�s vive ao lado da casa azul. 
% 15. O homem que fuma Blends � vizinho do que bebe �gua.
%
% Pergunta-se: quem cria peixes?

% Regras para determinar se X est� ao lado de Y
ao_lado(X, Y, List) :- nextto(X, Y, List). % X � esquerda de Y
ao_lado(X, Y, List) :- nextto(Y, X, List). % Y � esquerda de X

% A solu��o � uma lista de casas, sendo que cada casa tem a forma:
% casa(cor, nacionalidade, animal, bebida, cigarro)
% member(E, List): verdadeiro se E � um dos elementos de List
% O operador "=" unifica o lado esquerdo com o direito
solucao(Casas, Dono_Peixe) :-
  Casas = [_, _, _, _, _], 				% a solucao � uma lista com 5 elementos
  member(casa(vermelha, ingles, _, _, _), Casas), 	% Condi��o 1: esta casa � membro da solucao
  member(casa(_, sueco, cachorro, _, _), Casas),	% Condi��o 2: esta casa tamb�m, e assim por diante
  member(casa(_, dinamarques, _, cha, _), Casas),	
  nextto(casa(verde,_,_,_,_), casa(branca,_,_,_,_), Casas),
  member(casa(verde, _, _, cafe, _), Casas),
  member(casa(_, _, passaro, _, pallmall), Casas),
  member(casa(amarela, _, _, _, dunhill), Casas),
  [_, _, casa(_, _, _, leite, _), _, _] = Casas,	% Condi��o 8: na casa do centro se bebe leite
  [casa(_, noruegues, _, _, _) | _] = Casas,		% Condi��o 9: primeira casa
  ao_lado(casa(_, _, _, _, blends), casa(_, _, gato, _, _), Casas),
  ao_lado(casa(_, _, _, _, dunhill), casa(_, _, cavalo, _, _), Casas),
  member(casa(_, _, _, cerveja, bluemaster), Casas),
  member(casa(_, alemao, _, _, prince), Casas),
  ao_lado(casa(_, noruegues, _, _, _), casa(azul, _, _, _, _), Casas),
  ao_lado(casa(_, _, _, _, blends), casa(_, _, _, agua, _), Casas),
  member(casa(_, Dono_Peixe, peixe, _, _), Casas).	% Condi��o final, para saber quem cria peixes

