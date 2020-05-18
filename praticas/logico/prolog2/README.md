# Prática: Programação lógica em Prolog


## Consultas e regras em Prolog


Programas em Prolog podem ser vistos como bases de conhecimento, formadas por predicados expressos como fatos e regras. A partir da base de conhecimento, podemos fazer consultas para obtermos informações que sejam dedutíveis dessa base.

Nesta parte da prática, você vai expressar consultas e adicionar regras em uma base composta por fatos sobre filmes de cinema: [movies.pl](movies.pl). Antes de começar os exercícios, examine o código e entenda as convenções usadas nos fatos.

1. Escreva consultas no interpretador interativo para expressar o seguinte:
   1. Em que ano foi lançado o filme American Beauty?
   2. Quais foram os filmes lançados no ano 2000?
   3. Quais foram os filmes lançados antes de 2000?
   4. Quais foram os filmes lançados depois de 1990?
   5. Encontre um ator que apareceu em mais de um filme.
   6. Encontre um diretor de um filme com a atriz Scarlett Johansson.
   7. Encontre um ator que também tenha dirigido um filme.
   8. Encontre um ator ou atriz que também tenha dirigido um filme.
   9. Encontre o filme co-estrelado pelos atores John Goodman and Jeff Bridges.

2. Adicione regras à base para expressar o seguinte:

   1. `released_after(M, Y)` : o filme M foi lançado após o ano Y
   2. `released_before(M, Y)` : o filme M foi lançado antes do ano Y
   3. `same_year(M1, M2)` : os filmes M1 e M2 foram lançados no mesmo ano
   4. `co_star(A1, A2)` : o ator ou atriz estão no mesmo filme



## Listas em Prolog

A linguagem Prolog, assim como Haskell, suporta listas nativamente. Ao contrário de Haskell, as listas em Prolog podem ser heterogêneas. Elas podem ser vistas como agrupamentos de símbolos que fazem sentido em um determinado contexto. 

Existem vários predicados pré-definidos que manipulam listas em Prolog. Veja mais sobre isso nestes [slides](https://docs.google.com/presentation/d/1JDEbRUr0QYoRjx-DHRUEeX-UWwKSCObI0UcJPYVoASM/edit?usp=sharing).


1. Defina um predicado `ao_lado(X, Y, L)` para determinar se X está imediatamente ao lado de Y na lista L. Neste caso, X pode estar imediatamente à esquerda OU à direita de Y. Você pode usar o predicado `nextto`, só vai precisar usá-lo 2 vezes.

2. Defina um predicado `um_entre(X, Y, L)` para determinar se os elementos X e Y da lista L estão separados por exatamente um elemento. Você pode usar o predicado `nextto`. Abaixo estão exemplos de consultas com o predicado `um_entre`:
   ```prolog
   ?- um_entre(b,c,[a,b,c,d]).
   false.
   ?- um_entre(b,d,[a,b,c,d]).
   true .
   ?- um_entre(a,d,[a,b,c,d]).
   false.
   ```
   
## Desafios de Lógica em Prolog

1. Na primeira aula de programação lógica, foi apresentado um problema simples de lógica da Olimpíada Brasileira de Informática. Um código em Prolog que resolve este problema está [aqui](mesas.pl). Analise este código e execute-o.

2. Você conhece um desafio que circula pela Internet chamado de Charada de Einstein (ou [Enigma de Einsten](https://super.abril.com.br/ideias/charada-atribuida-a-einsten-da-no-no-cerebro-e-vira-hit-na-web/))? Veja [aqui](Einstein.md) a descrição de um problema de lógica e sua resolução em Prolog. Estude o código da solução (o código usa os predicados `nextto` e `ao_lado`).

3. Seguindo o exemplo anterior, resolva o problema de lógica descrito em http://rachacuca.com.br/logica/problemas/esquadrilha-de-avioes/. Nesse problema, há uma esquadrilha de 5 aviões em um show aéreo. Cada um deles solta fumaça de uma cor e possui uma anomalia diferente. Além disso, os aviões são comandados por cinco experientes pilotos que praticam um esporte cada um, além de preferirem uma bebida distinta. Sua tarefa é encontrar todas as informações a partir das seguintes dicas:  

    1. O avião do Cel. Milton solta fumaça vermelha.
    2. O rádio transmissor do Ten. Walter está com problemas.
    3. O piloto do avião que solta fumaça verde adora pescar.
    4. O Major Rui joga futebol nos finais de semana.
    5. O avião que solta fumaça verde está imediatamente à direita do avião que solta fumaça branca.
    6. O piloto que bebe leite está com o altímetro desregulado.
    7. O piloto do avião que solta fumaça preta bebe cerveja.
    8. O praticante de natação pilota o avião que solta fumaça vermelha.
    9. O Cap. Farfarelli está na ponta esquerda da formação.
    10. O piloto que bebe café voa ao lado do avião que está com pane no sistema hidráulico.
    11. O piloto que bebe cerveja voa ao lado do piloto que enfrenta problemas na bússola.
    12. O homem que pratica equitação gosta de beber chá.
    13. O Cap. Nascimento bebe somente água.
    14. O Cap. Farfarelli voa ao lado do avião que solta fumaça azul.
    15. Na formação, há um avião entre o que tem problema hidráulico e o com pane no altímetro.
    16. Um dos pilotos joga tênis.
    17. Há um avião com problema de temperatura.
    18. Dica final: use o predicado `um_entre` criado em outro exercício.


