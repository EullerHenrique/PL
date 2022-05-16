% Nome: Euller Henrique Bandeira Oliveira
% Matrícula : 11821BSI210


% Exercício 1

a_direita_de(maria,joao).
a_direita_de(jose,maria).
a_direita_de(julia,jose).
a_direita_de(jorge,julia).
a_direita_de(ana,jorge).
a_direita_de(iris,ana).

% Exercício 2

a_esquerda_de(X,Y) :- a_direita_de(Y,X).

% Exemplos de consultas:
%
% ?- a_esquerda_de(X,Y).
% X = joao,
% Y = maria ;
% X = maria,
% Y = jose ;
% X = jose,
% Y = julia ;
% X = julia,
% Y = jorge ;
% X = jorge,
% Y = ana ;
% X = ana,
% Y = iri

% ?- a_esquerda_de(joao,maria).
% true.

% ?- a_esquerda_de(maria,jose).
% true.

% ?- a_esquerda_de(jose,julia).
% true.

% ?- a_esquerda_de(julia,jorge).
% true.

% ?- a_esquerda_de(jorge,ana).
% true.

% ?- a_esquerda_de(ana,iris).
% true.

% Exercício 3

sao_vizinhos_de(Esq,Dir,Meio) :- a_esquerda_de(Esq,Meio), a_direita_de(Dir,Meio).

% ?- sao_vizinhos_de(Esq,Dir,Meio).
% Esq = joao,
% Dir = jose,
% Meio = maria ;
% Esq = maria,
% Dir = julia,
% Meio = jose ;
% Esq = jose,
% Dir = jorge,
% Meio = julia ;
% Esq = julia,
% Dir = ana,
% Meio = jorge ;
% Esq = jorge,
% Dir = iris,
% Meio = ana ;
% false.
%
% ?- sao_vizinhos_de(joao,jose,maria).
% true.
%
% ?- sao_vizinhos_de(maria,julia,jose).
% true.
% 
% ?- sao_vizinhos_de(jose,jorge,julia).
% true.
%
% ?- sao_vizinhos_de(julia,ana,jorge).
% true.
%
% ?- sao_vizinhos_de(jorge,iris,ana).
% true.
%

% Exercício 4

adjacente(X,Y) :- a_esquerda_de(X,Y).
adjacente(X,Y) :- a_direita_de(X,Y).


% ?- adjacente(X,Y).
% X = joao,
% Y = maria ;
% X = maria,
% Y = jose ;
% X = jose,
% Y = julia ;
% X = julia,
% Y = jorge ;
% X = jorge,
% Y = ana ;
% X = ana,
% Y = iris ;
% X = maria,
% Y = joao ;
% X = jose,
% Y = maria ;
% X = julia,
% Y = jose ;
% X = jorge,
% Y = julia ;
% X = ana,
% Y = jorge ;
% X = iris,
% Y = ana.

% ?- adjacente(joao,maria).
% true;
% false.

% ?- adjacente(maria,joao).
% true.

% Exercício 5

% esta_na_ponta(X) :- a_esquerda_de(X,Y), a_esquerda_de(Y,Z), a_esquerda_de(Z,W), a_esquerda_de(W,K), a_esquerda_de(K,V), a_esquerda_de(V,N), a_direita_de(N,V).
% esta_na_ponta(X) :- a_esquerda_de(N,V), a_direita_de(V,N), a_direita_de(K,V), a_direita_de(W,K), a_direita_de(Z,W), a_direita_de(Y,Z), a_direita_de(X,Y).

% Usando o predicado not

% esta_na_ponta(X) :- not(a_esquerda_de(X,Y)).
% esta_na_ponta(X) :- not(a_direita_de(X,Y)).

esta_na_ponta(X) :- a_esquerda_de(X,maria).
esta_na_ponta(X) :- a_direita_de(X,ana).

% ?- esta_na_ponta(X).
% X = joao ;
% X = iris ;
% false.
%
%?- esta_na_ponta(jose).
%false.

% ?- esta_na_ponta(maria).
% false.

% ?- esta_na_ponta(iris).
% true ;
% false.

% ?- esta_na_ponta(joao).
% true ;
% false.