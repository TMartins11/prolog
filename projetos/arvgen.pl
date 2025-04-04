% fatos
pai(marcelo, roberto).
pai(marcelo, carlos).
pai(carlos, caio).
pai(jeremias, maria).

mae(juliana, roberto).
mae(juliana, carlos).
mae(thais, maria).
mae(maria, caio).

% regras
irmao(X,Y) :- (pai(P,X) , pai(P,Y) , X \= Y) ; (mae(M,X) , mae(M,Y), X \= Y).

avo(X,Y) :- ((pai(X,P) ; mae(X,P)), (pai(P,Y) ; mae(P,Y))).

tio(X,Y) :- (irmao(X,P) , pai(P,Y)) ; (irmao(X,M) , mae(M,Y)).