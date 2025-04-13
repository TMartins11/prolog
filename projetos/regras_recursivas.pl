%// 
% Definição de Regras Recursivas.
%//

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

irmao(X,Y) :- ((pai(A,X) , pai(A,Y)) , (mae(B,X) , mae(B,Y))) , X \= Y.

%//
% Definimos a lógica de antecessor por recursividade, explicando de maneira direta: X é 
% antecessor direto de Y se X é pai ou mãe de Y (caso base). X também é antecessor de Y se
% é pai ou mãe de algum antecessor de Y (Recursividade). Logo, podemos observar que uma 
% consulta já mostra todos os antecessores de um indivíduo, devido a estrutura recursiva.
%//
antecessor(X,Y) :- pai(X,Y).
antecessor(X,Y) :- mae(X,Y).
antecessor(X,Y) :- pai(X,Z) , antecessor(Z,Y).
antecessor(X,Y) :- mae(X,Z) , antecessor(Z,Y).



%//
% Exercício: Defina regras para relação parente a partir da relação antecessor. Duas pessoas 
% são parentes se tem um antecessor em comum.
%//

parente(X,Y) :- (antecessor(A,X) , antecessor(A,Y)) , X \= Y.
