1. Quais das seguintes sequências de caracteres são átomos? Quais são variáveis?
 E quais não se enquadram em nenhuma categoria?

a) 
vINCENT
R: Atómo

b)
Footmassage
R: Váriavel

c)
variable23
R: Atómo

d)
Variable2000
R: Váriavel

e)
big_kahuna_burger
R: Atómo

f)
'big kahuna burger'
R: Atómo

g)
big kahuna burger
R: Não se enquadra em nenhuma categoria porque atómos e variáveis não podem possuir espaço.

h)
'Jules
R: Não se enquadra em nenhuma categoria porque um atomo não pode possuir somente um apostrofo.

i)
_Jules
R: Váriavel

k)
'_Jules'
R: Atómo


2. Quais das seguintes sequências de caracteres são átomos,
   quais são variáveis,
   quais são termos complexos 
   e quais não são termos válidos?

Forneça o functor e a aridade dos termos complexos.

a)

ama(Vincent,mia)

R: 
Termo complexo  = ama(Vincent,mia) 
Aridade = 2
Vincent = variável
Átomos = ama, mia 

b)
'ama(Vincent,mia)'

R: 
Termo complexo = 'ama(Vincent,mia)'
Aridade = 2
Vincent = variável
Átomo = ama, mia

c)
Butch(boxeador)
R: Não é um termo válido, functores não podem ser váriáveis.

d)

boxeador(Butch)

R:
Termo complexo = boxeador(Butch)
Aridade = 1
Váriavel = Butch
Atómo = boxeador

e)

and(big(burger),kahuna(burger))

R: 
Termo complexo = big(burger), kahuna(burger), and(big(burger),kahuna(burger))

Aridade do functor big(burguer) = 1
Aridade do functor kahuna(burguer) = 1
Aridade do functor and(big(burger),kahuna(burger)) = 2

Atómos = and, big, burguer, kahuna, burguer

f)

and(big(X),kahuna(X))
R:

Termo complexo = and, big, kahuna

Aridade do functor big(burguer) = 1
Aridade do functor kahuna(burguer) = 1
Aridade do functor and(big(burger),kahuna(burger)) = 2

Atómos = big, kahuna, and
Variáveis = X

_and(big(X),kahuna(X))
R: Não é um termo válido, termos complexos não podem ser váriaveis. 


(Butch mata Vincent)
R: Não é um termo válido, sintaxe totalmente incorreta

mata(Butch Vincent)
R: Não é um termo válido, se o usuário quissese dois argumentos devereria inserir uma virgula após o Butch, se ele quisesse só um deveria inserir um _ após o Butch.

mata(Butch,Vincent
R: Não é um termo válido, os parenteses não foram fechados. 


3. Quantos fatos, regras, cláusulas e predicados existem na seguinte base de conhecimento? Quais são as cabeças das regras e quantos objetivos elas possuem?

mulher(vincent).
mulher(mia).
homem(jules).

pessoa(X):- homem(X); mulher(X).
ama(X,Y) :- pai(X,Y).
pai(Y,Z) :- homem(Y), filho(Z,Y).
pai(Y,Z) :- homem(Y), filha(Z,Y).

R: 
Fatos : 3 fatos.
1- mulher(vincent).
2- mulher(mia).
3- homem(jules).

Regras : 4 regras.
1 - pessoa(X):- homem(X); mulher(X).
2 - ama(X,Y):- pai(X,Y).
3 - pai(Y,Z):- homem(Y), filho(Z,Y).
4 - pai(Y,Z):- homem(Y), filha(Z,Y).

Predicados: 7 predicados.
1 - mulher/1
2 - homem/1
3 - pessoa/1
4 - ama/2 
5 - pai/2 
6 - filho/1
7 - filha/1.

Cláusulas: 7 cláusulas.
1 - mulher(vincent).
2 - mulher(mia).
3 - homem(jules).
4 - pessoa(X):- homem(X); mulher(X).
5 - ama(X,Y):- pai(X,Y).
6 - pai(Y,Z):- homem(Y), filho(Z,Y).
7 - pai(Y,Z):- homem(Y), filha(Z,Y).

Cabeças das regras: 3 cabeças de regras. 
1 - pessoa(X)
2 - ama(X,Y)
3 - pai(Y,Z)

Obejetivos das cabeças das regras: 
1 - pessoa(X): 2 objetivos - homem(X), mulher(X).
2 - ama(X,Y): 1 objetivo - pai(X,Y).
3 - pai(Y,Z): 2 objetivos - homem(Y), filho(Z,Y).
4 - pai(Y,Z): 2 objetivos - homem(Y), filha(Z,Y).

4. Represente as seguintes sentenças em Prolog:

(a) Butch é um assassino.
R: assasino(butch).

(b) Mia e Marcelus são casados.
R: casados(mia,marcelus).

(c) Zed está morto.
R: morto(zed).

(d) Marsellus mata todos que fazem massagem nos pés de Mia.
R: mata(marcellus,X) :- massagem_nos_pes_de(X,mia).

(e) Mia ama todos que são bons dancarinos.
R: ama(mia, X) :- bom_dancarino(X).

(f) Jules come tudo que é nutriente e gostoso
R: come(jules,X) :- nutriente(X), gostoso(X).

5. Suponha que estamos trabalhando com a seguinte base de conhecimento:

bruxo(ron).
temVarinha(harry).
jogaQuadribol(harry).

bruxo(X):- temVassoura(X), temVarinha(X).
temVassoura(X):- jogaQuadribol(X).

Como Prolog responderá a cada uma das seguinte consultas? Justifique sua resposta.

(a) 
? bruxo(ron).
True; 
False.

Justificativa: Existe um fato chamado bruxo(ron), portanto o primeiro resultado é True. Não existem fatos determinando que ron tem uma vassoura, uma varinha, e que joga quadriball, portanto devido às regras, o segundo resultado é False.

(b) 
? bruxa(ron).
ERROR: Undefined procedure: bruxa/1
ERROR:   However, there are definitions for:
ERROR:         bruxo/1
ERROR:
ERROR: In:
ERROR:    [8] bruxa(ron)
ERROR:    [7] <user>

Justificativa: Ocorre um erro porque o predicado bruxa/1 não foi declarado na base de conhecimento.

(c) 
? bruxo(hermione).
False.
Justificaativa: A hermione não tem uma vassoura nem uma varinha, portanto ela não é um bruxo.

(d) 
? bruxa(hermione).
ERROR: Undefined procedure: bruxa/1
ERROR:   However, there are definitions for:
ERROR:         bruxo/1
ERROR:
ERROR: In:
ERROR:    [8] bruxa(hermione)
ERROR:    [7] <user>

Justificativa: Ocorre um erro porque o predicado bruxa/1 não foi declarado na base de conhecimento.

(e) 
? bruxo(harry).
True.
Justificativa: O harry joga quadriball, portanto possui uma vassora. Harry possui uma vassoura e  possui uma varinha, portanto é um bruxo.

(f) 
? bruxo(Y).
Y = ron;
Y = harry. 

Justificativa: A consulta está perguntando "Quem é bruxo?", prolog percorre toda a base de dados e determina que ron e harry são bruxos.

(g)  
? bruxa(Y).
ERROR: Undefined procedure: bruxa/1
ERROR:   However, there are definitions for:
ERROR:         bruxo/1
ERROR:
ERROR: In:
ERROR:    [8] bruxa(_15354)
ERROR:    [7] <user>

Justificativa: Ocorre um erro porque o predicado bruxa/1 não foi declarado na base de conhecimento.

6. Quais dos seguintes pares de termos unificam?
Caso positivo, qual é a unificação das variáveis?

a) 
bread = bread
Unifica
R : True.

b)
'Bread' = bread
Não unifica
R: False.

Correção: 'bread' = bread

c)
'bread' = bread
Unifica
R: True

d) 
Bread = bread
Unifica
R: Bread = bread

e)
bread = sausage
Não Unifica
R: False

Correção: Bread = sausage ou bread = Sausage

f)
food(bread) = bread
Não unifica
R: False
Correção: food(bread) = Bread

g)
food(bread) = X
Unifica
R: X = food(bread).

h)
food(X) = food(bread)
Unifica
R: X = bread

i)
food(bread,X) = food(Y,sausage)
Unifica
R: X = sausage,
   Y = bread.

j)
food(bread,X,beer) = food(Y,sausage,X)
Não unifica
R: False.

Correção: food(bread, X, beer) = food(Y,sausage, Z).

k)
food(bread,X,beer) = food(Y,kahuna_burger)

Não unifica
R: False

Correção: food(bread,X,beer) = food(Y, kahuna, burguer)

l)
food(X) = X
Unifica
R: X = food(x).

m)
meal(food(bread),drink(beer)) = meal(X,Y)
Unifica
R: X = food(bread),
   Y = drink(beer).

n)
meal(food(bread),X) = meal(X,drink(beer))
Não Unifica
R: False.

Correção: meal(food(bread,X) = meal(Y,drink(beer))

7. Estamos trabalhando com a seguinte base de conhecimento:

elfo_domestico(dobby).

bruxa(hermione).
bruxa('McGonagall').
bruxa(rita_skeeter).

magico(X) :- elfo_domestico(X).
magico(X) :- bruxo(X).
magico(X) :- bruxa(X).

Quais das seguintes consultas serão satisfeitas? Caso positivo, qual é a unificação das variáveis

?- magico(elfo_domestico).
ERROR: Undefined procedure: bruxo/1
ERROR:   However, there are definitions for:
ERROR:         bruxa/1
ERROR:
ERROR: In:
ERROR:    [9] bruxo(elfo_domestico)
ERROR:    [8] magico(elfo_domestico) at /mnt/d/PROLOG/bcd4.pro:55
ERROR:    [7] <user>

Justificativa: O predicado bruxo/1 não foi declarado no banco de dados, portanto assim que a regra com esse predicado se iniciar o programa irá dar erro.

?- bruxo(harry).
ERROR: Undefined procedure: bruxo/1
ERROR:   However, there are definitions for:
ERROR:         bruxa/1
ERROR:
ERROR: In:
ERROR:    [8] bruxo(harry)
ERROR:    [7] <user>

Justificativa: O predicado bruxo/1 não foi declarado no banco de dados, portanto assim que a regra com esse predicado se iniciar o programa irá dar erro.

?- magico(bruxo).
ERROR: Undefined procedure: bruxo/1
ERROR:   However, there are definitions for:
ERROR:         bruxa/1
ERROR:
ERROR: In:
ERROR:    [9] bruxo(bruxo)
ERROR:    [8] magico(bruxo) at /mnt/d/PROLOG/bcd4.pro:55
ERROR:    [7] <user>

Justificativa: O predicado bruxo/1 não foi declarado no banco de dados, portanto assim que a regra com esse predicado se iniciar o programa irá dar erro.

?- magico('McGonagall').

ERROR: Undefined procedure: bruxo/1
ERROR:   However, there are definitions for:
ERROR:         bruxa/1
ERROR:
ERROR: In:
ERROR:    [9] bruxo('McGonagall')
ERROR:    [8] magico('McGonagall') at /mnt/d/PROLOG/bcd4.pro:55
ERROR:    [7] <user>

Justificativa: O predicado bruxo/1 não foi declarado no banco de dados, portanto assim que a regra com esse predicado se iniciar o programa irá dar erro.

?- magico(Hermione).
Herminone = dobby;

ERROR: Undefined procedure: bruxo/1
ERROR:   However, there are definitions for:
ERROR:         bruxa/1
ERROR:
ERROR: In:
ERROR:    [9] bruxo(_4310)
ERROR:    [8] magico(_4334) at /mnt/d/PROLOG/bcd4.pro:55
ERROR:    [7] <user>

Justificativa: O predicado bruxo/1 não foi declarado no banco de dados, portanto assim que a regra com esse predicado se iniciar o programa irá dar erro.

A única consulta satisfeita (pelo menos no primeiro resultado) é a "?magico(Hermione)".

8)

homem(vernon).
homem(dudley).
homem(harry).
homem(paul).
homem(albert).
homem(james).

homem(euller).
homem(joao).
homem(jose).
homem(fulano).
homem(cicrano).
homem(stark).
homem(bruno).

mulher(petunia).
mulher(lili).
mulher(helen).
mulher(ruth).

mulher(maria).
mulher(joana).
mulher(joaquina).
mulher(nicoly).
mulher(fulana).
mulher(cicrana).
mulher(marvete).

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


gerou(euller, paul).
gerou(maria, paul).

gerou(joao, helen).
gerou(joana, helen).

gerou(jose, albert).
gerou(joaquina, albert).

gerou(nicoly, ruth).
gerou(bruno, ruth).

gerou(fulano, vernon).
gerou(fulana,vernon).

gerou(cicrano, fulano).
gerou(cicrana, fulano).

gerou(stark, fulana).
gerou(marvete, fulana).

casal(vernon,petunia).
casal(lili,james).
casal(paul,helen).
casal(albert,ruth).

pai(X,Y) :- homem(X), gerou(X,Y).
mae(X,Y) :- mulher(X), gerou(X,Y).

avo(X,Y) :- homem(X), pai(X,Z), gerou(Z,Y).
avoo(X,Y) :- mulher(X), mae(X,Z), gerou(Z,Y).

irma(X,Y) :- mulher(X), pai(Z,X), pai(Z,Y), X \= Y. 
irmao(X,Y) :- homem(X), pai(Z,X), pai(Z,Y), X \= Y.

tia(X,Y) :- mulher(X), irma(X,Z), mae(Z,Y).
tio(X,Y) :- mulher(Z), irma(Z,K), mae(K,Y), homem(X), casal(X, Z).
tio(X,Y) :- mulher(Z), irma(Z,K), mae(K,Y), homem(X), casal(Z, X).

bisavo(X,Y) :- homem(X), avo(Z,Y), pai(X,Z).
bisavo(X,Y) :- homem(X), avoo(Z,Y), pai(X,Z).

bisavoo(X,Y) :- mulher(X), avo(Z,Y), mae(X,Z).  
bisavoo(X,Y) :- mulher(X), avoo(Z,Y), mae(X,Z).

ancestral(X,Y) :- pai(X,Y).
ancestral(X,Y) :- mae(X,Y).
ancestral(X,Y) :- avo(X,Y).
ancestral(X,Y) :- avoo(X,Y).
ancestral(X,Y) :- bisavo(X,Y).
ancestral(X,Y) :- bisavoo(X,Y).

