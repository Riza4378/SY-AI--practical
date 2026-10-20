
valid(X,Y) :- X>=1, X=<5, Y>=1, Y=<5.

move((X,Y),(A,Y)) :- A is X-1, valid(A,Y).
move((X,Y),(X,B)) :- B is Y-1, valid(X,B).
move((X,Y),(A,Y)) :- A is X+1, valid(A,Y).
move((X,Y),(X,B)) :- B is Y+1, valid(X,B).

solve_maze_dfs(S,G,P) :- dfs(S,G,[S],P).
dfs(G,G,_,[G]).
dfs(S,G,V,[S|P]) :-
    move(S,N), \+ member(N,V),
    dfs(N,G,[N|V],P).
