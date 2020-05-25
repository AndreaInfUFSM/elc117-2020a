/* guess.pl 
 *  
 * Animal guessing game.
 *
 * start with ?- go.     
*/

go :- nl,
      write('Think of an animal and I will attempt to guess what it is.'),
      nl,
      write('Please answer yes or no to the following questions:'),
      nl, nl,
      guess(Animal),
      write('The animal is a '),
      write(Animal),
      nl,
      undo.

/* hypotheses to be tested */
guess(human)   :- human, !.
guess(giraffe) :- giraffe, !.
guess(zebra)   :- zebra, !.
guess(unknown).             /* no diagnosis */

/* animal identification rules */
human :- mammal, 
         omnivore, 
         verify(make_and_use_tools),
         verify(walk_upright).
giraffe :- ungulate, 
           herbivore,
           verify(have_a_long_neck).
zebra :- ungulate, 
         herbivore,
         verify(have_black_stripes).


/* classification rules */
mammal    :- verify(have_hair_or_fur), !.
mammal    :- verify(give_milk).
omnivore  :- verify(eat_meat), verify(eat_plants), !.
herbivore :- verify(eat_plants).
ungulate  :- mammal, verify(have_hooves), !.

/* how to ask questions */
ask(Question) :-
    write('Does the animal '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
      assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.

