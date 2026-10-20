% Available colors
color(red).
color(green).
color(blue).
% Map coloring
map(A,B,C,D) :-
    color(A), color(B),
    color(C), color(D),
    % Adjacent regions must differ
    A \= B,
    A \= C,
    B \= C,
    B \= D.
