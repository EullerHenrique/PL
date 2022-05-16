%Nome: Euller Henrique Bandeira Olivera
%Matrícula: 11821BSI210

%QUESTÃO 1

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).

frequenta(joao, ufu).
frequenta(maria, ufu).
frequenta(joel, iftm).

professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).

funcionario(pedro, iftm).
funcionario(ana_paula, ufu).
funcionario(carlos, ufu).


%a)
aluno_de(X,Y) :- aluno(X,Z), professor(Y,Z). 

%b)
associado_de(X,Y) :- frequenta(X,Y).
associado_de(X,Y) :- funcionario(X,Y).
associado_de(X,Y) :- aluno_de(Z,X), frequenta(Z,Y). 

%QUESTÃO 2

bonita(cassia).

rico(marcos).
bonito(marcos).

rica(ana).
forte(ana).

forte(fabiano).
bonito(fabiano).

amavel(silvio).
forte(silvio).

homem(marcos).
homem(fabiano).
homem(silvio).

mulher(cassia).
mulher(ana).

gosta(X,Y) :- homem(X), mulher(Y), bonita(Y).

feliz(X) :- homem(X), rico(X).
feliZ(X) :- homem(X), mulher(Y), gosta(X,Y), gosta(Y,X).
feliZ(X) :- mulher(X), homem(Y), gosta(X,Y), gosta(Y,X).

gosta(ana, Y) :- homem(Y), gosta(Y,ana).
gosta(cassia, Y) :- homem(Y), gosta(Y, cassia), rico(Y), amavel(Y).
gosta(cassia, Y) :- homem(Y), gosta(Y,cassia), bonito(Y), forte(Y).

%QUESTÃO 3

% cliente(Código, Nome, Cidade).
cliente(1, ana, uberlandia).
cliente(2, rui, araguari).
cliente(3, eva, uberlandia).
cliente(4, ivo, patrocinio).

% compra(Código Cliente, Nome do Produto, Quantidade).
compra(1, arroz, 10).
compra(1, feijão, 2).
compra(2, açúcar, 1).
compra(4, arroz, 5).
compra(4, café, 3).
compra(4, feijão, 2).

% a)

% ?- cliente(4,X,_).
% X = ivo.


% b)

% ?- compra(1,X,_).
% X = arroz ;
% X = feijão.

% c)

% ?- compra(X,_,Z), cliente(X,Y,_), Z > 4.
% X = 1,
% Z = 10,
% Y = ana ;
% X = 4,
% Z = 5,
% Y = ivo ;
% false.

% d)

% ?- cliente(X,eva,_).
% X = 3.

% e)

% ?- cliente(X,Y,_), not(compra(X,_,_)).
% X = 3,
% Y = eva ;
% false.

%QUESTÃO 4
m(a).
m(b).
p(a).
p(b).
q(a).
q(b).
r(a).
t(b).
s(X) :- p(X), t(X).
exec(X) :- m(X), s(X).
exec(X) :- q(X), r(X).


%a)
%
%                     ?exec(U).
%            |                              |
%            |                              |
%            | U = X;                       | U = X;
%            |                              |
%            |                              |
%            |                              |
%        m(X), s(X)                     q(X), r(X) 
%  X = a |        | X = b        X = a |        | X = b
%        |        |                    |        |
%        |        |                    |        |
%        |        |                    |        |
%m(a), s(a)        m(b), s(b)  q(a), r(a)    q(b),r(b)
%    |                 |            |            |         
%    |                 |            |            |
%    |                 |            |            |
%    |                 |            |            |
%  s(a)              s(b)          r(a)         r(b)
%    |                 |            |            |
%    |                 |            |            |
%    |                 |            |            |
%    |                 |            |            |
%p(a),t(a)           X = b        X = a       
%    |                 |            |          __|__
%    |                 |            |            |
%    |                 |            |
%    |                 |            |
%  t(a)              U = b         U = a
%    |
%    |
%    |
%    |      
%  
%  __|__
%    |
% 
     
%b)

% ?exec(U).
% U = b;
% U = a;
% false.
