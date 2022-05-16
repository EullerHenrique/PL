% Nome: Euller Henrique Bandeira Oliveira
% Matrícula: 11821BSI210

%1)

%a

entre(X,A,B) :- X =< A, X >= B.

%b

entre(X,A,B) :- X =< A, X >= B.
entre(X,A,B) :- X >= A, X =< B.

%2)
tipo(charmander,fogo).
tipo(jynx,gelo).
evoluiPara(charmander,charmeleon).
evoluiPara(charmeleon, charizard).


%Caso base
tipoTotal(P,T) :- tipo(P,T).

%Caso recursivo
tipoTotal(P,T) :- evoluiPara(Inter,P),
                  tipoTotal(Inter,T).


%3)

deCarro(auckland, hamilton).
deCarro(hamilton, raglan).
deCarro(valmont, saarbruecken).
deCarro(valmont, metz).
deTrem(metz, frankfurt).
deTrem(saarbruecken, frankfurt).
deTrem(metz, paris).
deTrem(saarbruecken, paris).
deAviao(frankfurt, bangkok).
deAviao(frankfurt, singapore).
deAviao(paris, losAngeles).
deAviao(bangkok, auckland).
deAviao(losAngeles, auckland).


%Casos bases

viagem(Origem,Destino) :- deCarro(Origem,Destino).
viagem(Origem,Destino) :- deTrem(Origem,Destino).
viagem(Origem,Destino) :- deAviao(Origem,Destino).

%Casos recursivos

viagem(Origem,Destino) :- deCarro(Origem, INTER),
                          viagem(INTER, Destino).
viagem(Origem,Destino) :- deTrem(Origem, INTER),
                          viagem(INTER,Destino).
viagem(Origem,Destino) :- deAviao(Origem,INTER),
                          viagem(INTER,Destino).
