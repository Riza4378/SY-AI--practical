
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).

bfs([], _).
bfs([Node-Level|Rest], Visited) :-
    write(Node), write(' Level: '), writeln(Level),
    findall(N, (edge(Node,N), \+ member(N,Visited)), Next),
    L1 is Level+1,
    append(Rest, [Next-L1], Temp),
    flatten(Temp, Queue),
    append(Visited, Next, V1),
    bfs(Queue, V1).

solve :- bfs([a-0], [a]).
