pai(pedro,cayque).
pai(pedro,thiago).

mae(denise,cayque).
mae(denise,thiago).

irmao(X,Y) :- (pai(A,X) , pai(A,Y)) , (mae(B,X) , mae(B,Y)) , X \= Y.

cabeca_cauda([],[]) :-
    write('a lista passada eh vazia!').

cabeca_cauda([H|T]) :-
    write('a cabeca eh: ') , write(H), nl,
    write('a cauda eh: ') , write(T), nl.

pertence(H, [H|_]).
pertence(H, [_|X]) :- pertence(H,X).

compara([],[]).
compara([_|X], [_|Y]) :- compara(X,Y).
             
ultimo(X,[X]).
ultimo(X,[_|A]) :- ultimo(X,A).

penultimo(X,[X,_]).
penultimo(X,[_|A]) :- penultimo(X,A).

duplica([],[]).
duplica([X|Xs], [X,X|Ys]) :- duplica(Xs, Ys).

remove_duplicados([],[]).
remove_duplicados([H|T], R):-
    pertence(H,T),
	remove_duplicados(T,R).

remove_duplicados([H|T], [H|R]) :-
    \+ pertence(H, T),
    remove_duplicados(T, R).
