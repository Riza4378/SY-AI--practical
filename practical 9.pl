% Place queens in columns 1 to 8
queens(Solution) :-
    permutation([1,2,3,4,5,6,7,8], Solution),
    safe(Solution).
% Check diagonal safety
safe([]).
safe([Q|Rest]) :-
    safe(Rest),
    no_diagonal(Q, Rest, 1).
no_diagonal(_, [], _).
no_diagonal(Q, [R|Rest], Distance) :-
    abs(Q-R) =\= Distance,
    Next is Distance+1,
    no_diagonal(Q, Rest, Next).
