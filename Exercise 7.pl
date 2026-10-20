
d(bus_stand, market, 3).
d(bus_stand, college, 5).
d(market, college, 2).

dist(A,B,D) :- d(A,B,D), !.
dist(A,B,D) :- d(B,A,D).

cost([_],0).
cost([A,B|T],C) :-
    dist(A,B,D), cost([B|T],R), C is D+R.

solve :-
    findall(C-T,
      (permutation([market,college],P),
       append([bus_stand|P],[bus_stand],T),
       cost(T,C)), L),
    sort(L,[C-T|_]),
    writeln(T), writeln(C).
