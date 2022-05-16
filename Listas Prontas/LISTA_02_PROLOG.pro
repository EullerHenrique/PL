% 1)

joga(ana,volei).
joga(bia,tenis).
joga(ivo,basquete).
joga(eva,volei).
joga(leo,tenis).


% ?- joga(leo,X),joga(P,X), P \= leo.
% X = tenis,
% P = bia ;
% false.

% ?- joga(leo,X),joga(P,X), P \= leo.
% X = tenis,
% P = bia ;
% false.

% 2)

info(ana, fem, 23, 1.55, 56.0).
info(bia, fem, 19, 1.71, 61.3).
info(ivo,masc, 22, 1.80, 70.5).
info(lia, fem, 17, 1.85, 57.3).
info(eva, fem, 28, 1.75, 68.7).
info(ary, masc, 25, 1.72, 68.9).

%3)

modelo(Nome,Sexo, Idade,Altura, Peso,Peso_Ideal) :- info(Nome,Sexo,Idade,Altura,Peso), 
                                                    Sexo = fem, Idade < 25,
                                                    Altura > 1.70,
                                                    Peso_Ideal is (62.1 * Altura - 44.7),
                                                    Peso =< Peso_Ideal. 


%4) 

%Caso base
potencia(Base, 0, 1).

%Caso recursivo
potencia(Base, Expoente, Resultado):- 
                                      Expoente > 0,
                                      Expoente1 is (Expoente - 1),%Diminui o Expoente a cada loop recursivo 
                                      potencia(Base, Expoente1, Resultado1),% Chama a própria regra várias vezes, só termina quando o case base for encontrado e quando o Expoente for igual a zero
                                      Resultado is (Base *Resultado1). % Resultado final(REALIZA O BACKTRACKING)
                                      
%5)

%Caso base 
ack(0,N,A) :- A is (N +1).

%Caso recursivo 
ack(M,N,A) :- M > 0, N = 0,
              M1 is M - 1,
              N1 = 1, 
              
              %A
              ack(M1,N1,A).

ack(M,N,A) :- M > 0, N > 0,
              
              M1 is M - 1, 
              
              M2 = M,
              N2 is N - 1,

              %N1 = 
              ack(M2,N2,N1),
              
              %A
              ack(M1, N1,A).

%6)

%sobre(Bloco 1, Bloco 2).

sobre(b,a).
sobre(d,b).
sobre(d,c).

%Caso base
acima(X,Y) :- sobre(X,Y).

%Caso recursivo
acima(X,Y) :- sobre(X, INTER),
              acima(INTER, Y).

%7

%Sem corte
num(N,positivo) :- N > 0.
num(0, nulo).
num(N, negativo) :- N < 0.


%Com corte
num(N,positivo) :- N > 0,!.
num(0, nulo) :- !.
num(N, negativo) :- N < 0.

