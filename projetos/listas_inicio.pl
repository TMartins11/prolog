%//
% Listas
% 
% Uma lista vazia é representada por []. Como é vazia, tem cabeça e cauda indefinida.
% 
% *Uma lista vazia é parte de qualquer lista, mas nenhuma lista é parte de uma lista vazia.
% 
% Uma lista não vazia é constitúida por 2 partes: 
% 
% Cabeça == Primeiro elemento.
% Cauda == O restante da lista, com exceção da cabeça.
% 
% Ex: [pedro,denise,cayque,thiago]]	
% 
% cabeça = pedro.
% cauda = [denise,cayque,thiago].												
%
% No caso de lista com elemento único, temos ele mesmo como cabeça e a cauda como lista vazia:
% 
% Ex: [coisa]
% 
% Cabeça == coisa.
% Cauda == [].
% 
% 
% Temos vários tipos comuns de representação para listas:
% 
% .[A, B, pedro] == Uma lista com elementos genéricos ou desconhecidos e pedro.
% 
% .[rosa, cravo | X] == Uma lista com rosa, cravo e uma sequência genérica de elementos após.
% .[5,9,7|X] == Uma lista cujo 1º elemento é 5, o 2º é 9, o 3º é 7 e o resto dos elementos é x.
% 
% * | == Resto da Lista.
% 
% Outro padrão importante de listas é o que tem tanto a cabeça quanto a cauda representadas por
% variáveis:
% 
% . Lista 1      Lista 2
% 	[X,Y,Z]  [joao,maria,jose]  ->  x = joao, y = maria, z = jose.
% 	
% É importante ressaltar que regras funcionam "como fatos" em certos casos com listas, conforme
% exemplificação abaixo nas funções cabeca e cauda.
% 	
%//

cabeca([H|_], H).

cauda([_|T],T).
