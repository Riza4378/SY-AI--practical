queens(N,S) :-
    numlist(1,N,L),
    permutation(L,S),
    safe(S).

safe([]).
safe([Q|T]) :-
    safe(T),
    safe2(Q,T,1).

safe2(_,[],_).
safe2(Q,[H|T],D) :-
    abs(Q-H) =\= D,
    D1 is D+1,
    safe2(Q,T,D1).