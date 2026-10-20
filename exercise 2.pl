
% Users
user(rahul).
user(priya).
user(amit).
user(neha).

% Movies
movie(jawan, action).
movie(three_idiots, comedy).
movie(dhoni, drama).

% Preferences
likes(rahul, action).
likes(priya, comedy).
likes(amit, drama).
likes(neha, action).

% Watched movies
watched(rahul, dangal).
watched(priya, pk).

% Recommendation
recommend(U, M) :-
    user(U), movie(M, G),
    likes(U, G),
    \+ watched(U, M).

% Top 3 recommendations
top3(U) :-
    findall(M, recommend(U, M), L),
    write(U), write(' - Top 3: '),
    print_top(L, 3).

print_top(_, 0) :- !.
print_top([], _) :- !.
print_top([H|T], N) :-
    write(H), write(' '),
    N1 is N - 1,
    print_top(T, N1).

% Print for all users
all_users :-
    user(U), top3(U), nl, fail.
all_users.
