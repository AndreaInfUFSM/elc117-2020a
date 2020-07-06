# Prática: Programação Concorrente em Java



## Orientações 

Nesta prática você vai exercitar conceitos de programação concorrente e orientada a objetos em Java.

Antes de fazer esta prática, consulte este material:
- Introdução à programação concorrente (independente de linguagem): [slides](https://docs.google.com/presentation/d/1mYoRmmIQJaBi6Y_UkPWnx9kLx4SO2QTFVBlE-anwlHE/edit?usp=sharing) ou [vídeo](https://drive.google.com/file/d/11QWQgXAeDy5wg4LBwRe0QSISnf_8xbkC/view?usp=sharing) 
- Programação concorrente em Java: [slides](https://docs.google.com/presentation/d/1sD3qdfyfVYXhpepPM11DWabAzEgtaO0-0gAQRoDmwgE/edit?usp=sharing) ou [vídeo](https://drive.google.com/file/d/11QWQgXAeDy5wg4LBwRe0QSISnf_8xbkC/view?usp=sharing) (classe Thread, interface Runnable, métodos run, start e join)



## Exercícios sem GUI

1. Baixe o programa [MainThread.java](MainThread.java) ou use este [repl.it](https://repl.it/@AndreaSchwertne/java-thread). Este programa cria 2 threads concorrentes, usando as abordagens explicadas nos slides. Compile o programa e execute-o mais de uma vez, observando as saídas. Você conseguiu notar o não-determinismo característico da execução concorrente? 

2. Acrescente outra thread ao programa, definindo uma classe derivada de `Thread`. Nesta nova classe, o método `run()` deverá executar um laço que mostre 20 vezes a hora do sistema, num formato que mostre horas, minutos, segundos e milissegundos. Lembre de ativar a thread usando `start()`. Obs.: Você vai precisar pesquisar como obter a hora do sistema em Java e como formatá-la.

3. Acrescente outra thread ao programa, desta vez definindo uma nova classe que implemente a interface `Runnable`. O método `run()` deverá executar um laço que faça 10 sorteios de valores em um conjunto à sua escolha (por exemplo, números de 0 a 5). Para fazer isso, você pode usar o método `Math.random()` ou a classe `Random` (pesquisa sobre esses recursos). Lembre de ativar a thread usando `start()`.


## Exercícios com GUI

1. Baixe o programa [ThreadDemoSwing.java](ThreadDemoSwing.java). Este programa usa 2 threads que escrevem concorrentemente em áreas de texto numa interface gráfica. Você pode controlar as threads usando os botões Run e Stop.

2. Analise o código em [ThreadDemoSwing.java](ThreadDemoSwing.java) e localize a parte que define o comportamento das threads. Note que grande parte deste código se refere à interface gráfica, usando classes do Swing, e foi gerado automaticamente pelo Netbeans.

3. Você deverá alterar o código para que uma das threads tenha um comportamento diferente. Por exemplo: faça com que a mensagem contenha algum dado gerado aleatoriamente e seja mostrado com uma frequência diferente.


## Entrega

Continue entregando seus exercícios no repositório das práticas anteriores, dentro de uma pasta java7. Se você usou o repl.it, pode simplesmente adicionar um README.md dentro da pasta, com os links para os códigos online.
