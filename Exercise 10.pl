subject(math).
subject(physics).
subject(chemistry).
subject(english).

slot(1).
slot(2).
slot(3).

% Subjects sharing students
share(math, physics).
share(physics, chemistry).
share(math, chemistry).

different(X,Y) :- X \= Y.

solve(M,P,C,E) :-
    slot(M), slot(P), slot(C), slot(E),
    different(M,P),
    different(P,C),
    different(M,C).