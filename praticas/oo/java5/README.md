# Prática: POO em Java



## Orientações 

Nesta prática você vai exercitar conceitos de orientação a objetos resumidos nos slides sobre [polimorfistmo](https://docs.google.com/presentation/d/1mPmJN0SyHCRKgkM-r3p-wwsThy68-9gAcjCwawMN9ow/edit?usp=sharing) e [herança](https://docs.google.com/presentation/d/1RqHDauB2jNiwos4CaNZfav5YgywwOxUyCtDrM60j36I/edit?usp=sharing). 


Além dos slides, há links para outros **materiais complementares**, indicados ao longo da prática e em comentários nos códigos fornecidos. 


Para começar, baixe o arquivo [polymorphism.zip](src/polymorphism.zip). Neste código, há uma hierarquia de classes em java inspiradas em itens usados em jogos estilo RPG:
- [GameItem.java](src/polymorphism/GameItem.java): superclasse que representa itens que podem ser colocados em uma sacola;
- [Weapon.java](src/polymorphism/Weapon.java): subclasse de GameItem representando uma arma;
- [Consumable.java](src/polymorphism/Consumable.java): subclasse de GameItem representando um item consumível (comida, poção, etc.)
- [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java): programa com interface textual (command-line) que usa as classes acima
- [GameItemTestGUI.java](src/polymorphism/GameItemTestGUI.java): programa com interface gráfica (com Swing) que usa as classes acima



## Exercícios CLI (Command Line Interface)

1. Compile o código e execute a classe `GameItemTestCLI`. Observe que o método `main` dessa classe cria uma coleção de objetos e implementa diferentes formas de iterar sobre eles (veja comentários no código).

2. Observe que, para objetos `Consumable`, não são mostrados todos os atributos nos `println`. Altere o código em [Consumable.java](src/polymorphism/Consumable.java) para mostrar o restante dos atributos.

3. Em [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java), no último laço, há uma linha comentada que causa erro de compilação. Explique o motivo do erro com base nos conceitos de orientação a objetos.

4. Ao final de [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java), adicione um código equivalente ao último laço do programa, porém usando o método `forEach` explicado [aqui](https://www.baeldung.com/foreach-java).

5. Ao final de [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java), adicione um código que calcule o peso total da sacola, considerando todos os itens que estão dentro dela.

6. Em [Consumable.java](src/polymorphism/Consumable.java), quando o item é consumido, seu peso continua inalterado. Altere o código para zerar o peso do item quando ele for consumido. Atenção ao encapsulamento.





## Exercícios GUI (Graphical User Interface)

1. Execute a classe `GameItemTestGUI` e veja o que acontece a cada clique no botão Next. Confira esta classe linha por linha e compare com a saída observada.

2. Baixe o arquivo [helloimage.zip](src/helloimage.zip) e descompacte-o. No programa [HelloImageSwing.java](src/helloimage/HelloImageSwing.java) há um exemplo simples que mostra uma imagem (ícone) na interface gráfica. Compile e execute este programa. Cuidado para que o arquivo com a imagem esteja acessível ao método `main`.

3. Sua tarefa agora será alterar o código de `[GameItemTestGUI.java](src/polymorphism/GameItemTestGUI.java) para setar e mostrar, na interface gráfica, imagens associadas a cada item na sacola.


# Entrega

Continue entregando seus exercícios no repositório das práticas anteriores, dentro de uma pasta java5. Se você usou o repl.it, pode simplesmente adicionar um README.md dentro da pasta, com os links para os códigos online.
