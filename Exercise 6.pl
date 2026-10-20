
% Tic-Tac-Toe: Choose who plays first

start_human :-
    play(x).

start_computer :-
    play(o).

play(x) :-
    write('Human plays first as X'), nl.

play(o) :-
    write('Computer plays first as O'), nl.
