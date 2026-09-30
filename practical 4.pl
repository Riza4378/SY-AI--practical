%Facts

marks(riza,90).
marks(ram,60).
marks(sham,34).
marks(aman,78).
marks(rohan,45).
marks(neha,88).
marks(priya,32).
marks(vikas,70).
marks(sonam,95).
marks(raj,55).

%Rule
pass(X):-
marks(X,M),M>=35.

fail(X):-
marks(X,M),M<35.

distinction(X):-
marks(X,M),M>=75.
