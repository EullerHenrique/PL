% Exercício 1. Os seguintes termos unificam? Caso positivo, qual é a unificação das variáveis? Use o SWISH para verificar suas respostas.

% ?- g(f(X,g(Z))) = Y.
% R: Unifica
% Y = g(f(X,g(Z))).

% ?- g(f(X), g(Z)) = g(Y).
% R: Não unifica


% ?- g(f(b), m(Y)) = g(f(Y), Z).
% Y = b;
% Z = m(b).

% ?- g(f(X)) = f(g(X)).
% R: Não Unifica

% ?- Y = f(a, Z).
% R: Unifica
% Y = f(a,z).

% ?- Y = f(Z).
% R: Unifica
% Y = f(Z).

% ?- Z = f(Z).
% R: Unifica
% Z = f(Z).

% Exercício 4. Dois segmentos de reta podem ser definidos, em Prolog, através das %seguintes cláusulas:

vertical(segmento(ponto(X,Y1),ponto(X,Y2))).  
horizontal(segmento(ponto(X1,Y),ponto(X2,Y))).  

% Forneça as respostas para as seguintes consultas:

% ?- vertical(segmento(ponto(1,1),ponto(1,2))).
% True.

% ?- vertical(segmento(ponto(1,1),ponto(2,Y))).
% False.

% ?- horizontal(segmento(ponto(1,1),ponto(2,Y))).
% Y = 1.

% ?- horizontal(segmento(ponto(Z,5),ponto(2,Y))).
% Y = 5.

% ?- horizontal(segmento(ponto(Z,5),ponto(2,7))).
% False.

% ?- vertical(segmento(ponto(2,3),P)).
% P = ponto(2, _3172)


