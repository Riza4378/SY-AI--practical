%user defined
likes(riza,comedy).
likes(alisha,action).

%movie database
movie(dhamal ,comedy).
movie( bahubali,action).

%rule
recommend(USER,MOVIE):-
likes(USER,CATEGORY),
likes(MOVIE,CATEGORY).