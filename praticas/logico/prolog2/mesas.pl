% Problema da Olimpíada Brasileira de Informática, Modalidade Iniciação.

% Para comemorar o aniversário de Cíntia, ela e mais quatro amigas - Alice, Bia, Dirce e Eunice - foram almoçar juntas no RU. 
% As mesas são redondas e acomodam exatamente 5 pessoas. Cíntia e Dirce sentam-se uma ao lado da outra. Alice e Bia não sentam-se uma ao lado da outra. 
% As duas amigas sentadas ao lado de Eunice são:
% a) Cintia e Alice
% b) Cintia e Dirce
% c) Alice e Bia
% d) Dirce e Bia
% e) Alice e Dirce


solucao(X,Y) :-
	A = [alice,bia,cintia,dirce,eunice],
	permutation(A,L),
	aolado(cintia,dirce,L),
	not(aolado(alice,bia,L)),
  aolado(X,eunice,L),
	aolado(Y,eunice,L),
  not(X=Y), !.

aolado(X,Y,L) :- nextto(X,Y,L); nextto(Y,X,L).
aolado(X,Y,L) :- naspontas(X,Y,L).

naspontas(X,Y,L) :- L = [X|_], last(L,Y).
naspontas(X,Y,L) :- L = [Y|_], last(L,X).

