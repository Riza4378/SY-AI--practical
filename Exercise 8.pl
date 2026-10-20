tree(a,b). tree(a,c).
tree(b,d). tree(b,e).
tree(c,f). tree(c,g).
tree(d,h). tree(d,i).
tree(e,j). tree(e,k).
tree(f,l). tree(f,m).
tree(g,n). tree(g,o).
tree(h,p). tree(h,q).
tree(i,r). tree(i,s).
tree(j,t). tree(j,u).
tree(k,v). tree(k,w).
tree(l,x). tree(l,y).
tree(m,z). tree(m,aa).
tree(n,ab). tree(n,ac).
tree(o,ad). tree(o,ae).

leaf(X) :- \+ tree(X,_).