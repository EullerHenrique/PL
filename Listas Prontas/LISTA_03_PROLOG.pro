% 1. Implemente predicados em Prolog para resolver as seguintes operações sobre listas:

%a) Verificar se um elemento pertence a uma lista. 

% Exemplo:
% ?- pertence(c, [a,b,c,d,e,f]).
% true.
% ?- pertence(j, [a,b,c,d,e,f]).
% false.

% Sem corte

%Caso Base
pertence(H,[H|T]).

%Caso Recursivo
pertence(H,[H1|T]) :- pertence(H,T).

%Com corte

%Caso Base
pertencev2(H,[H|_]):- !.

%Caso Recursivo
pertencev2(H,[_|T]) :- pertencev2(H,T).


% (b) Encontrar o último elemento de uma lista. Exemplo:

% ?- ultimo([a,b,c,d,e,f], X).
% X = f .

% ?- ultimo([a,b,c,d,e,f], f).
% true .

% ?- ultimo([a,b,c,d,e,f], s).
% false.

% Sem corte 

%Se toda a lista for percorrida, ou seja, se restou somente um elemento, tal elemento é o último.
%Se toda a lista for percorrida e o H do segundo elemento é igual ao H do primeiro elemento, então a resposta é True.

%Caso Base
ultimo([H],H).

%A cada iteração um elemento é removido, e o próximo elemento da lista é enviado para a próxima iteração.

%Caso Recursivo
ultimo([H1|T],H) :- ultimo(T,H).


%Com corte

%Caso Base
ultimo2([H],H):- !.

%Caso Recursivo
ultimo2([_|T],H) :- ultimo2(T,H). 


% (c) Verificar se dois elementos são consecutivos em uma lista.

%Exemplo:
% ?- consecutivos(b,c,[a,b,c,d,e,f]).
% true .
% ?- consecutivos(b,e,[a,b,c,d,e,f]).
% false.

%Sem Corte

%Caso Base

%Se X e Y forem exatamentes iguais aos dois primeiros elementos da lista, a resposta será os valores de X  e Y.
%Se os valores informados pelo usúario X e Y forem exatamente iguais aos dois primeiros elementos da lista a resposta é true.

%Caso Base
consecutivos(X,Y,[X,Y]).

%A cada iteração dois elementos são removidos

%Caso Recursivo
consecutivos(X,Y,[X1,Y1|T]) :-consecutivos(X,Y,T). 

%Com Corte

%Caso Base
consecutivosv2(X,Y,[X,Y]) :- !.

%Caso Recursivo
consecutivosv2(X,Y,[_,_|T]) :-consecutivosv2(X,Y,T). 



% (d) Somar os elementos de uma lista numérica.

% Exemplo: 
% ?- somar([1,2,3,4,5], S).
% S = 15.

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

          
% (f) Contar o número de elementos de uma lista. Exemplo:
% ?- n_elementos([a,b,c,d,e,f], N).
% N = 6.


%Se a lista for vazia, seu número de elementos será 0
%Caso Base
n_elementos([],0).

%A cada iteração um elemento é removido.

% Quando o caso base for verdadeiro, o backtracking será realizado, ou seja, a soma 
% da quantidade de elementos será feita de trás pra frente. 
% Ex : 
% 0 + 1 = 1.
% 1 + 1 = 2.                                                      
% 2 + 1 = 3.

%Caso Recursivo
n_elementos([H1|T],N) :- n_elementos(T,NF),
                         N is NF + 1.



% (i) Inserir um elemento na primeira posição uma lista. Exemplo:
% ?- inserir_primeiro(p, [a,b,c,d,e,f], L).
% L = [p, a, b, c, d, e, f].

inserir_primeiro(H,L,[H|L]).


todos_zeros([0]):-!.

todos_zeros([H|T]):- H =:= 0,
                    todos_zeros(T).
                    
ultimo([X],X) :- !.

ultimo([_|T],N) :- ultimo(T,N).





              