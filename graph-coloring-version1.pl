
/* Map color */

adjacent(1,2).     adjacent(2,1).
adjacent(1,3).     adjacent(3,1).
adjacent(1,4).     adjacent(4,1).
adjacent(1,5).     adjacent(5,1).
adjacent(2,3).     adjacent(3,2).
adjacent(2,4).     adjacent(4,2).
adjacent(3,4).     adjacent(4,3).
adjacent(4,5).     adjacent(5,4).

color(1,red,a).   color(1,blue,b).
color(2,blue,a).  color(2,blue,b).
color(3,green,a). color(3,blue,b).
color(4,yellow,a). color(4,blue,b).
color(5,blue,a).  color(5,blue,b).


conf(Coloring) :-adjacent(X,Y),
	color(X,Z,Coloring),
	color(Y,Z,Coloring).

conf(R1,R2,Coloring) :-
    adjacent(R1,R2),
    color(R1,Z,Coloring),
    color(R2,Z,Coloring).
