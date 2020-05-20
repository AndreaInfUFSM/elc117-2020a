female(marge).
female(lisa).
female(maggie).
female(wilma).
female(pebbles). % pedrita :-)
male(homer).
male(bart).
male(fred).

parent(marge, bart).
parent(homer, bart).
parent(marge, lisa).
parent(homer, lisa).
parent(marge, maggie).
parent(homer, maggie).
parent(wilma, pebbles).
parent(fred, pebbles).


mother(X, Y) :- 
  parent(X, Y), 
  female(X).
  
father(X, Y) :- 
  parent(X, Y), 
  male(X).
  
son(X, Y) :- 
  parent(Y, X), 
  male(X).
  
daughter(X, Y) :- 
  parent(Y, X), 
  female(X).
