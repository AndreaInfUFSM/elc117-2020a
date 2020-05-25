# Prática: Programação lógica em Prolog


Prolog pode ser usado em sistemas especialistas que simulam raciocínio dedutivo. Nesta prática, vamos trabalhar com um código simples que ilustra isso: um programa que tenta adivinhar um animal a partir de perguntas sobre suas características. 

O programa que você usará como ponto de partida usa recursos de Prolog que você já conhece, mas também alguns que não foram vistos nas aulas. Fique bem atento a isso, pois no final você vai preencher um formulário sobre esses elementos conhecidos ou desconhecidos.


## Executando o programa

1. Vamos usar um programa que está disponível no SWISH: [https://swish.swi-prolog.org/p/animal-guess.pl](https://swish.swi-prolog.org/p/animal-guess.pl). Mesmo que você tenha Prolog instalado localmente, use o SWISH desta vez, porque o programa faz I/O e há diferenças em como isso é tratado nos interpretadores interativos. Usando o SWISH, todos terão uma primeira experiência idêntica.

2. Para executar o programa, use o predicado `go` na seção de consultas do SWISH:
   ```
   ?- go.
   ```
   Lembre do ponto final e de usar Ctrl-Enter para executar a consulta.
   
3. Pense em uma das poucas opções suportadas pelo programa (human, giraffe ou zebra) e responda às questões que o programa propõe.

4. Agora pense em um animal não suportado pelo programa e responda novamente às questões.


   
## Modificando o programa


1. Analise o programa e localize as regras que fazem, por exemplo, o programa deduzir que o animal é uma zebra.


2. Localize as linhas de código que contêm perguntas mostradas ao usuário, tanto as fixas como as perguntas que variam conforme o usuário vai respondendo.


3. Modifique o programa para que ele seja capaz de identificar um cavalo. Reuse regras sempre que possível e adicione as que forem necessárias.

 
4. Modifique o programa para que ele seja capaz de identificar outro animal à sua escolha.



## Respondendo algumas questões

No final da prática, responda a este [formulário](https://docs.google.com/forms/d/e/1FAIpQLScMHVnliDXJLSQVeWK1ZGRrg_vyblw0bU4kiKGIw1aqLDK0VA/viewform?usp=sf_link) com 4 perguntas sobre esta prática e sobre seu entedimento de Prolog em geral.




