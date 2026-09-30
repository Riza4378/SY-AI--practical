likes(riza,ankita).
likes(ankita,riza).
likes(aasiya,alisha).

friendship(X,Y):-
    likes( X,Y),
    likes( Y,X).