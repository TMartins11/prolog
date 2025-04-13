%//
%Exercícios:
% 1. Traduza as seguintes afirmações em regras prolog:
% 
% • Todos que tem filhos são felizes (defina uma relação de um argumento feliz).
% 
% • X é irmão de Y se X e Y são filhos do mesmo pai e da mesma mãe.
% 
% 2. Defina a relação neto a partir das relações pai e mãe.
% 
% 3. Defina a relação anterior a partir das relações avo_materno, avo_paterno, avoh_paterna e
% avoh_materna.
% 
%//

% Exercício 1

% fatos
pai(joao,joaquim).
pai(joao,lucas).
pai(pedro,silvia).
pai(joaquim,bruno).

mae(maria,joaquim).
mae(maria,lucas).
mae(laura,silvia).
mae(silvia,bruno).

% regras
feliz(X):- pai(X,_) ; mae(X,_).

irmao(X,Y):- (pai(A,X) , pai(A,Y)) , (mae(B,X) , mae(B,Y)).

% Exercício 2: Neto somente a partir de pai e mãe.
neto1(X,Y):- (pai(A,X) ; mae(A,X)) , (pai(Y,A) ; mae(Y,A)).

% Exercício 3: Neto a partir de avôs e avós maternos e paternos.
avo_materno(X,Y):- (mae(A,Y), pai(X,A)).
avo_paterno(X,Y):- (pai(A,Y) , pai(X,A)).

avoh_paterna(X,Y):- (pai(A,Y) , mae(X,A)).
avoh_materna(X,Y):- (mae(A,Y) , mae(X,A)).

neto2(X,Y):- avo_materno(Y,X) ; avo_paterno(Y,X) ; avoh_paterna(Y,X) ; avoh_materna(Y,X).
