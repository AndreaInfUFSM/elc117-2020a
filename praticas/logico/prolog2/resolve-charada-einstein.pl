% Exemplo de programa em Prolog que resolve o seguinte problema
% de lógica:
%
% 1. O inglês vive na casa vermelha. 
% 2. O sueco tem cachorros. 
% 3. O dinamarquês bebe chá. 
% 4. A casa verde fica à esquerda da casa branca. 
% 5. O dono da casa verde bebe café. 
% 6. A pessoa que fuma Pall Mall cria pássaros. 
% 7. O dono da casa amarela fuma Dunhill. 
% 8. O homem que vive na casa do centro bebe leite. 
% 9. O norueguês vive na primeira casa. 
% 10. O homem que fuma Blends vive ao lado do que tem gatos. 
% 11. O homem que cria cavalos vive ao lado do que fuma Dunhill. 
% 12. O homem que fuma Bluemaster bebe cerveja. 
% 13. O alemão fuma Prince. 
% 14. O norueguês vive ao lado da casa azul. 
% 15. O homem que fuma Blends é vizinho do que bebe água.
%
% Pergunta-se: quem cria peixes?

% Regras para determinar se X está ao lado de Y
ao_lado(X, Y, List) :- nextto(X, Y, List). % X à esquerda de Y
ao_lado(X, Y, List) :- nextto(Y, X, List). % Y à esquerda de X

% A solução é uma lista de casas, sendo que cada casa tem a forma:
% casa(cor, nacionalidade, animal, bebida, cigarro)
% member(E, List): verdadeiro se E é um dos elementos de List
% O operador "=" unifica o lado esquerdo com o direito
solucao(Casas, Dono_Peixe) :-
  Casas = [_, _, _, _, _], 				% a solucao é uma lista com 5 elementos
  member(casa(vermelha, ingles, _, _, _), Casas), 	% Condição 1: esta casa é membro da solucao
  member(casa(_, sueco, cachorro, _, _), Casas),	% Condição 2: esta casa também, e assim por diante
  member(casa(_, dinamarques, _, cha, _), Casas),	
  nextto(casa(verde,_,_,_,_), casa(branca,_,_,_,_), Casas),
  member(casa(verde, _, _, cafe, _), Casas),
  member(casa(_, _, passaro, _, pallmall), Casas),
  member(casa(amarela, _, _, _, dunhill), Casas),
  [_, _, casa(_, _, _, leite, _), _, _] = Casas,	% Condição 8: na casa do centro se bebe leite
  [casa(_, noruegues, _, _, _) | _] = Casas,		% Condição 9: primeira casa
  ao_lado(casa(_, _, _, _, blends), casa(_, _, gato, _, _), Casas),
  ao_lado(casa(_, _, _, _, dunhill), casa(_, _, cavalo, _, _), Casas),
  member(casa(_, _, _, cerveja, bluemaster), Casas),
  member(casa(_, alemao, _, _, prince), Casas),
  ao_lado(casa(_, noruegues, _, _, _), casa(azul, _, _, _, _), Casas),
  ao_lado(casa(_, _, _, _, blends), casa(_, _, _, agua, _), Casas),
  member(casa(_, Dono_Peixe, peixe, _, _), Casas).	% Condição final, para saber quem cria peixes

