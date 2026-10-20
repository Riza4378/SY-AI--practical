
% State-space tree: first two levels

move(a, b).
move(a, c).
move(b, d).
move(b, e).
move(c, f).

level1(X) :-
    move(X, Y),
    write(Y), nl.

level2(X) :-
    move(X, Y),
    move(Y, Z),
    write(Z), nl.

solve_tree :-
    write('Level 1:'), nl,
    level1(a),
    write('Level 2:'), nl,
    level2(a).
