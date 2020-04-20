# Trabalho 1: Geração de labirinto em formato SVG

## Deadline

A definir.

## Visão Geral

Neste trabalho, você vai criar um programa em Haskell capaz de gerar labirintos programaticamente, em formato SVG (Scalable Vector Graphics). Parece complicado? Não é, e inclusive você já dispõe de código que pode ser reusado para este trabalho, pois fizemos uma prática com um programa capaz de gerar figuras em SVG.

O maior desafio deste trabalho é resolver o problema com programação funcional, procurando pensar de forma diferente do que você faria em uma linguagem imperativa como C, por exemplo. Para começar, lembre-se que na programação funcional as funções não têm efeitos colaterais, e uma consequência disso é que as funções que fazem I/O (escrita do arquivo SVG, por exemplo) ficam separadas das funções que processam dados e realizam cálculos. A função principal do seu programa faz I/O: ela escreve num arquivo após invocar as demais funções que geram e processam os dados do labirinto. A maior parte do seu código será dedicada a essas outras funções, que deverão gerar uma representação de um labirinto (uma estrutura de dados) e convertê-lo para uma representação textual (strings) usando tags SVG. Uma vez geradas as strings, a função principal poderá gravá-las num arquivo.

Outra característica da programação funcional é que ela incentiva a decomposição de um problema complexo em sub-problemas mais simples. Funções simples e dedicadas a uma parte do problema são chamadas por outras, que em última instância são chamadas pela função principal. Para exercitar essa decomposição, faremos o trabalho incrementalmente, dividindo-o em duas entregas. Na primeira entrega, você vai implementar uma representação de um labirinto que possa ser traduzida para o formato SVG. Seu programa ainda não vai implementar a lógica de geração de um labirinto, ou seja, você vai trabalhar com uma estrutura de dados preenchida manualmente e vai apenas traduzi-la para uma representação em SVG  Na segunda entrega, você vai incrementar o programa, implementando a lógica para gerar a estrutura de dados que representa o labirinto. Para ambas as entregas, poderão ser publicadas algumas dicas ao longo das próximas aulas, para responder dúvidas que forem surgindo.

## Aquecimento

Para ajudar você a pensar em como resolver o problema, são fornecidos 2 exemplos de labirintos em formato SVG: [maze1.svg](maze1.svg) e [maze2.svg](maze2.svg). Você consegue identificar como são representadas as paredes do labirinto?


## Primeira Entrega

Conforme explicado acima, na primeira entrega, você vai implementar uma representação de um labirinto que possa ser traduzida para o formato SVG.

Você talvez tenha pensado que uma boa forma de representar um labirinto seja através de uma matriz. De fato, isso é possível em Haskell, mas é uma solução que se inspira na programação imperativa. Para incentivá-lo a pensar de forma diferente, pense que cada "célula" do labirinto possa ser representada por um tipo em Haskell semelhante a:

```haskell
-- ((x, y), (north, south, west, east))
type Cell = ((Int,Int),(Bool,Bool,Bool,Bool))
```

Com este tipo, por exemplo, uma célula ``((0,0),(True,True,True,False))`` pode designar que a posição (0,0) do labirinto possui "paredes" ao norte, sul e oeste, e uma passagem (ausência de parede) ao leste. Usando essa representação, seu labirinto pode ser implementado pelo tipo ``[Cell]`` (ou seja, uma lista de ``Cell``).



Aqui futuramente poderá haver mais dicas sobre a primeira parte.

## Segunda Entrega

Aqui futuramente poderá haver dicas sobre a segunda parte.



## Repositório de Entrega

Este trabalho será entregue em um repositório no GitHub, da mesma forma que o exercício t0 (prática haskell08). Logo que começar o trabalho, clique no link de convite para o t1 (https://classroom.github.com/a/vaCzVwP0) para criar o repositório de entrega.

Você deverá atualizar o repositório sempre que incrementar o trabalho. Ou seja, espera-se que você faça muitos commits nesse repositório, já que o desenvolvimento será incremental.




## Material de apoio

- Todos os slides sobre programação funcional em Haskell.

- [Tutorial SVG](https://www.w3schools.com/graphics/svg_intro.asp)  
  Tutorial SVG no W3Schools


