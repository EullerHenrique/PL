%   1)Pertence



% Sem corte

%Se o elemento desejado estiver localizado na cabeca da lista a resposta será true.


%Caso Base
pertence(H,[H|T]).

%A cada iteração um elemento é removido da lista.
%Desta maneira, todos os elementos podem ser analisados no caso base.

%Caso Recursivo
pertence(H,[H1|T]) :- pertence(H,T).


% Com corte

%Caso Base
pertencev2(H,[H]):- !.

%Caso Recursivo
pertencev2(H,[_|T]) :- pertencev2(H,T).


%   2)A para B



%Se ambas as listas forem vazias a resposta é true.

%Caso Base
a_para_b([],[]).

% A cada iteração a cabeça das duas listas são removidas
%(para dar true a cabeça da primeira lista precisa ser o elemento a, e a cabeça da segunda lista precisa ser o elemento b).

%Caso Recursivo
a_para_b([a|T1],[b|T2]) :- a_para_b(T1,T2).


%   3)Maior

% Sem Cortes

%Se a lista possuir somente um elemento, tal elemento será o maior.
%Se restar somente um elemento na lista signfica que o maior elemento foi determinado no caso Recursivo,
%portando, tal elemento será o maior.

%Caso Base
maior([M],M).

%A cada iteração ocorre duas coisas,
% um teste é realizado para verificar se o primeiro elemento é menor do que o segundo,
% se isso for verdade o primeiro elemento é removido e o resto da lista se torna um dos argumentos da função recursiva.

%Caso Recursivo

maior([H,H1|T],M):- H < H1,
                    maior([H1|T],M).
                  
%A cada iteração ocorre duas coisas,
% um teste é realizado para verificar se o primeiro elemento é maior do que o segundo ou igual,
% se isso for verdade o segundo elemento é removido e o resto da lista se torna um dos argumentos da função recursiva.
                  
                  
maior([H,H1|T],M):- H >= H1,
                    maior([H|T],M).


% Com cortes

maiorv2([M],M) :- !.

%Caso Recursivo

maiorv2([H,H1|T],M):- H < H1,
                    maiorv2([H1|T],M),!.
                    
maiorv2([H,H1|T],M):- H >= H1,
                    maiorv2([H|T],M).


% Menor
menor([M],M) :- !.
                    
%Caso Recursivo
                    
menor([H,H1|T],M):- H < H1,
                    menor([H|T],M),!.
                                        
menor([H,H1|T],M):- H >= H1,
                    menor([H1|T],M).

%   4)Soma



%Caso Base

%Se a lista for vazia, sua soma será 0
somar([],0).

%Caso Recursivo

%A cada iteração um elemento é removido

%Quando o caso base for verdadeiro, o backtracking será realizado, ou seja, a soma 
%será feita de trás pra frente com os elementos removidos.

%Ex : [1,2,3,4,5]
% 0  + 5 = 5
% 5  + 4 = 9
% 9  + 3 = 11
% 11 + 2 = 13
% 13 + 1 = 14

somar([H|T],S) :- somar(T,ST),
                  S is H + ST.


%   5)Comprimento 


%Se a lista for vazia, seu número de elementos será 0

%Caso Base
comprimento([],0).

%A cada iteração um elemento é removido.

% Quando o caso base for verdadeiro, o backtracking será realizado, ou seja, a soma 
% da quantidade de elementos será feita de trás pra frente. 
% Ex : 
% 0 + 1 = 1.
% 1 + 1 = 2.                                                      
% 2 + 1 = 3.

%Caso Recursivo
comprimento([_|T],N) :- comprimento(T,NF),
                        N is NF + 1.



%   6)Findall

q(blob,blag).
q(blob,blig).
q(blaf,blag).
q(dang,dong).
q(dang,blug).
q(flab,blob).

% Qual é a resposta do Prolog às seguintes consultas:
% (a) findall(X,q(blob,X),Lista).
% Lista = [blag, blig].

% (b) findall(X,q(X,blug),Lista).
% Lista = [dang].

% (c) findall(X,q(X,Y),Lista).
% Lista = [blob, blob, blaf, dang, dang, flab].

ultimo([X],X) :- !.

ultimo([_|T],N) :- ultimo(T,N).


misterio([],0) :- !.

misterio([H|T],N):- H >= 5,
                    misterio(T,N1),
                    N is H + N1,!.
misterio([H|T],N):- H < 5,
                    misterio(T,N).