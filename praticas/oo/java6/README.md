# Prática: POO em Java



## Orientações 

Nesta prática você vai exercitar conceitos de orientação a objetos em Java resumidos nos slides sobre [classes abstratas e interfaces](https://docs.google.com/presentation/d/1ULQLcneDaqEvTXYPbcVLtOWtjK7nRX-y3pc7v_-z_ao/edit?usp=sharing).


Sua missão vai ser criar um conjunto de classes representando blocos inspirados no jogo Minecraft.
Os blocos no jogo podem ser de vários tipos: Madeira, Grama, Terra, Pedra, Pedregulho, etc. Quando blocos são quebrados, eles "dropam" itens que podem ser coletados. O tipo dos itens "dropados" depende da ferramenta usada (ex.: com/sem picareta). Créditos para a ideia do exercício: mvschmaedeck e https://cseducators.stackexchange.com/q/4689/1913



## Exercícios 

1. Defina uma classe abstrata Bloco, com métodos `String getNome()` e `List<Bloco> dropItens(boolean)`. Qual desses métodos deverá ser abstrato?

2. Defina classes derivadas concretas: `Madeira, Grama, Terra, Pedra`, etc.

3. Defina uma classe usuária `MinecraftApp`, contendo um método `main`. Neste método, crie uma lista com alguns blocos variados, depois percorra alista dropando itens e os adicionando a outra lista.

## Extra

Que tal implementar uma interface gráfica para mostrar imagens dos blocos e informações sobre o que eles dropam?

## Entrega

Continue entregando seus exercícios no repositório das práticas anteriores, dentro de uma pasta java6. Se você usou o repl.it, pode simplesmente adicionar um README.md dentro da pasta, com os links para os códigos online.
