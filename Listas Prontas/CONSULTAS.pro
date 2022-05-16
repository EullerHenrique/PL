%pais(Nome, Area, Populacao)

pais(brasil, 8, 209).
pais(china, 9, 1380).
pais(eua, 9, 325).
pais(india, 3, 1300).


%Consultas

% 1) Determinar densidade demográfica do brasil

% ?pais(brasil,Area,Pop), Den is Pop / Area. JEITO CORRETO
% Area = 8,
% Pop = 209,
% Den = 26.125.

% ?pais(brasil,Area,Pop), Den = Pop / Area. JEITO ERRADO
% ?pais(brasil,Area,Pop), Den = div(Pop / Area). JEITO ERRADO

% 2) Diferença da população entre a china e a índia

%? pais(china,_,PC), pais(india,_, PI), DF is PC - PI.
% PC = 1380,
% PI = 1300,
% DF = 80.

% 3) A área do brasil é igual à dos estados unidos?

% ? pais(brasil,AB,_), pais(eua,AE,_), AB =:= AE.
% False.

% ? pais(brasil,AB,_), pais(eua,AE,_), AB =\= AE.
% AB = 8,
% AE = 9.

% Jeito melhor

mesma_area(P1,P2) :- pais(P1,AP1,_), pais(P2,AP2,_), AP1 =:= AP2.

% ?mesma_area(brasil, eua).
% False.

% ?mesma_area(china, eua).
% True.

% 4) A população dos estados unidos é maior do que a da china?

% pais(eua,_,PE), pais(china,_,PC), PE > PC.
% false.

% pais(eua,_,PE), pais(china,_,PC), PE < PC.
% PE = 325.
% PC = 1380.

%JEITO MELHOR

pop_maior(P1,P2) :- pais(P1,_,POP1), pais(P2,_,POP2), POP1 > POP2. 

% ?- pop_maior(china,eua).
% true.

% ?- pop_maior(eua,china).
% false.

% 5) A densidade dos estados unidos é maior do que a da china? 

% pais(eua, AE, PE), pais(china, AC, PC), PE/AE > PC/AC.
% false.

% pais(eua, AE, PE), pais(china, AC, PC), PE/AE < PC/AC.
% AE = AC, AC = 9,
% PE = 235,
% PC = 1380.

%JEITO MELHOR

dens_maior(P1,P2) :- pais(P1,AP1,POP1), pais(P2,AP2,POP2), POP1/AP1 > POP2/AP2.

% pais(eua, AE, PE), pais(china, AC, PC), PE/AE =< PC/AC.
% pais(eua, AE, PE), pais(china, AC, PC), PE/AE >= PC/AC.


% 6) IMC
% imc : massa / altura^2

% pessoa(Nome, Massa, Altura).
pessoa(joao, 80, 1.80).
pessoa(jose, 70, 1.50).
pessoa(jude,51,1.60).

imc(Nome, IMC) :- pessoa(Nome, Massa, Altura), IMC is Massa / Altura ^ 2.

imc_generico(MASSA,ALTURA,IMC) :- IMC is MASSA/ALTURA ^ 2.

%?pessoa(joao,M,A), IMC is M / A ^ 2.






