nonAdjacent(2,5).	nonAdjacent(3,5). 	nonAdjacent(X, Y):-X=Y.
adjacent(X,Y):-between(1,5,X),between(1,5,Y),not(nonAdjacent(X,Y)),not(nonAdjacent(Y,X)),X\=Y.

node(1,bleu,a).				node(X,vert,b):-X=1;X=3.
node(X,rouge,a):-X=2;X=5.			node(2,rouge,b).
node(3,vert,a).				node(4,jaune,b).
node(4,jaune,a).				node(5,vert,b).

node(X,bleu,c):-between(1,5,X). 	

node(X,rouge,d):-X=1;X=4.
node(Y,vert,d):-Y=2;Y=5.
node(3,blue,d).

conf(Coloriage):-(	node(X, Couleur, Coloriage),node(Y, Couleur, Coloriage),
			not(nonAdjacent(X,Y)),not(nonAdjacent(Y,X))
			-> 
			format("Conflit dans le coloriage ~a, premier conflit trouver entre: [~a ~a]", [Coloriage,X,Y]);
			format("Pas de conflit dans le coloriage ~a", [Coloriage]) ).

conf(X,Y,Coloriage):-( (nonAdjacent(X,Y);nonAdjacent(Y,X)) -> 
			format("Pas de conflit dans le coloriage ~a entre ~a et ~a", [Coloriage, X, Y]);
			( node(X, Couleur, Coloriage),node(Y, Couleur,Coloriage) ->
			format("Conflit trouver dans ~a entre ~a et ~a", [Coloriage, X, Y]);
			format("Pas de conflit dans le coloriiiiage ~a entre ~a et ~a", [Coloriage, X, Y]) ) ).

