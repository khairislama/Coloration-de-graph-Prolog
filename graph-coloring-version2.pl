adjacent(1,X):-between(2,5,X).
adjacent(X,1):-between(2,5,X).
adjacent(X,Y):-between(2,4,X),between(2,4,Y),X\=Y.
adjacent(X,Y):-between(4,5,X),between(4,5,Y),X\=Y.

node(1,bleu,a).				node(X,vert,b):-X=1;X=3.
node(X,rouge,a):-X=2;X=5.			node(2,rouge,b).
node(3,vert,a).				node(4,jaune,b).
node(4,jaune,a).				node(5,vert,b).

node(X,bleu,c):-between(1,5,X). 	

node(X,rouge,d):-X=1;X=4.
node(Y,vert,d):-Y=2;Y=5.
node(3,blue,d).


conflit(X,Y,Coloriage):-adjacent(X,Y),node(X, Couleur, Coloriage),node(Y, Couleur,Coloriage).

conflit(Coloriage):-conflit(X,Y,Coloriage),format("Conflit Entre: [~a ~a]", [X,Y]).

