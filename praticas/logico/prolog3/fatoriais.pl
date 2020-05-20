fatv1(0,1).
fatv1(N,X) :- 
	N1 is N - 1,
	fatv1(N1, X1),
	X is N*X1.

fatv2(0,1).
fatv2(N,X) :- 
	N1 is N - 1,
	fatv2(N1, X1),
	X is N*X1, !.


fatv3(0,1).
fatv3(A,B) :-  
	A > 0, 
        C is A-1,
        fatv3(C,D),
        B is A*D. 

