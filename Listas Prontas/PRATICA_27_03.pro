homem(vernon).
homem(dudley).
homem(harry).
homem(paul).
homem(albert).
homem(james).

mulher(petunia).
mulher(lili).
mulher(helen).
mulher(ruth).

gerou(vernon,dudley).
gerou(petunia,dudley).

gerou(paul,petunia).
gerou(helen,petunia).

gerou(paul,lili).
gerou(helen,lili).

gerou(lili,harry).
gerou(james,harry).

gerou(albert,james).
gerou(ruth,james).

casal(vernon,petunia).
casal(lili,james).
casal(paul,helen).
casal(albert,ruth).

pai(X,Y) :- homem(X), gerou(X,Y).
mae(X,Y) :- mulher(X), gerou(X,Y).

avo(X,Y) :- homem(X), pai(X,Z), gerou(Z,Y).
avoo(X,Y) :- mulher(X), mae(X,Z), gerou(Z,Y).

irma(X,Y) :- mulher(X), pai(Z,X), pai(Z,Y), X \= Y. 

tia(X,Y) :- mulher(X), irma(X,Z), mae(Z,Y).
tio(X,Y) :- mulher(Z), irma(Z,K), mae(K,Y), homem(X), casal(X, Z).
tio(X,Y) :- mulher(Z), irma(Z,K), mae(K,Y), homem(X), casal(Z, X).

