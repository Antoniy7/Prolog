member(X,[X|_]):-write(X).
member(X,[_|XS]):-member(X,XS).


test([X|XS]):-write(X), print(X).
print([X],[X]):-write(X).


%test([[X]|XS]):-wirte(X).

subset([ ],_).
subset([H|T],List) :-
    member(H,List),
    subset(T,List).


lists([], []).
lists([[Head|_]|Lists], [Head|L]):-
  lists(Lists, L).
lists([[_,Head|Tail]|Lists], L):-
  lists([[Head|Tail]|Lists], L).



take(0,X,X).
take(N,[H|T],[H|R]):- 
    N>0, M is N-1,
    take(M,T,R). 

sublist( [], _ ).
sublist( [X|XS], [X|XSS] ) :- sublist( XS, XSS ).
sublist( [X|XS], [_|XSS] ) :- sublist( [X|XS], XSS ).