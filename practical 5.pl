% Facts

salary(riza,90000).
salary(ram,60000).
salary(sham,25000).

% Rules

high_salary(X) :-
    salary(X,S),
    S >= 75000.

medium_salary(X) :-
    salary(X,S),
    S >= 30000,
    S < 75000.

low_salary(X) :-
    salary(X,S),
    S < 30000.