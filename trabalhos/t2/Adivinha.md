# Opção 2: Jogo de Adivinhação em Prolog


## Introdução

Você lembra do Akinator e da [prática](../../praticas/logico/prolog4) com um programa que tenta adivinhar um animal? Pois então... Nesta opção, seu trabalho vai ser um programa nesta linha, mas num nível de complexidade intermediário: nem tão complicado quanto o Akinator e nem tão simples quando o exercício da aula prática. 

Para isso, vamos acrescentar um grande diferencial: seu "adivinhador" vai ser especialista em um domínio de conhecimento, a partir do qual você vai construir sua base de fatos e regras. As perguntas que o programa fará ao usuário serão todas inseridas nesse domínio. Você pode escolher o domínio à vontade. Alguns temas que podem render trabalhos bem originais: adivinhar a linguagem de programação a partir de suas características, adivinhar colegas/professores/disciplinas da UFSM :-), adivinhar um local onde vocês podem se encontrar após a pandemia :-D, adivinhar um game, um vírus :-), etc. 



## O programa

- Qualquer que seja o tema, seu programa "adivinhador" funcionará de forma semelhante ao Akinator/prática: o usuário deverá pensar em uma resposta dentro do domínio e o programa fará perguntas para tentar adivinhá-lo.

- Para o programa ficar mais interessante do que o da aula prática, você vai ter que inserir mais possibilidades. No programa da prática, a base permitia deduzir uma entre apenas três alternativas (zebra, girafa ou humano). Seu programa deverá tratar, no mínimo, **cinco** alternativas no domínio escolhido (claro que, quanto mais alternativas, mais interessante ficará o programa).

- Opcional: para quem quiser um trabalho bem mais desafiador, é possível fazer um programa em que o usuário alimente a base com suas respostas. Por exemplo, no exercício de adivinhação de animais, suponha que o usuário pense em um cachorro, mas isso não esteja previsto na base de dados. Supondo que o usuário tenha respondido corretamente todas as perguntas, o programa pode, ao final, dizer que desconhece o animal, mas também perguntar qual foi o animal pensado e, possivelmente, pedir ao usuário que forneça mais algumas de suas características. Com isso, o programa pode alimentar a base e, numa próxima interação, conseguir acertar caso o usuário pense em um cachorro novamente.



## A entrega

- Dê um nome original para seu programa "adivinhador" :-)

- Entregue seu programa num arquivo com o nome do seu "adivinhador". Por exemplo, se o nome for "adivinator", entregue um arquivo `adivinator.pl`.


