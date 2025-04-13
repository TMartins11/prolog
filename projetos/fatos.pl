%// 
% pai(X,Y). == fato
% 
% . = fim de uma cláusula.
% , = and.
% ; = or.
% :- = if.
% \= = diferente de
% 
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


% //
% todas as consultas diretas irão responder apenas true ou false, mas caso tenhamos uma
% consulta com incógnita, prolog irá responder os valores que fazem a equação se tornar
% verdadeira, ou responderá diretamente false, caso não haja nenhuma.
% 
% Ex: ?-pai(joao,joaquim). == true
% 	  ?-pai(X,silvia) == pedro
% 	  ?-pai(joao,X) == joaquim && lucas
% 	  ?-pai(X,Y) == mostrará todos os pares possíveis de pais e filhos, conforme fatos.
% 
% É importante ressaltar que somente fatos já podem ser utilizados para consultas mais 
% complexas, por exemplo, é possível descobrir o avô de Bruno a partir de:
% 
%  ?-pai(Y,bruno) , pai(X,Y) == joao, pois é pai do pai de bruno.
% //



% //
% Exercícios:
% 1. Sejam pai e mãe as relações como definidas no programa exemplo anterior. Qual será a resposta
% de prolog para as seguintes questões:
% 
% • pai(joao, X). == joaquim && lucas.
% 
% • pai(X,joaquim). == joao.
% 
% • pai(joao,X), pai(X,bruno). == joaquim.
% 
% 2. Formule em prolog as seguintes consultas sobre as relações pai e mãe do programa anterior.
% 
% • Quem é o pai de Bruno?  == pai(X,bruno).
% 
% • Maria tem filhos? == mae(maria, _).
% 
% • Quem é o avô de Bruno? == pai(Y,bruno), pai(X,Y).
% //
