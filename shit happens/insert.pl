append([],B,B).
append([A|AS],B,[A|RS]):-append(AS,B,RS).


insert(X,L,M):-append(A,B,L),append(A,[X|B],M).

perm([],[]).
perm([X|XS],M):-perm(XS,R),insert(X,R,M).

between(A,B,A):- A=<B.
between(A,B,X):- A<B, A1 is A+1, between(A1,B,X).

nat(0).
nat(X):- nat(Y), X is Y+1.

length([],0).
length([_|XS],R):-length(Xs,Q), R is Q+1.

nth(N,L,X):-append(A,[X|_],L), length(A,N).