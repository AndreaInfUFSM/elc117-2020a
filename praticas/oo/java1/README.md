# Prática: Primeiro Contato com Java


Nesta parte da disciplina, vamos inverter a ordem clássica de teoria seguida de prática. Vamos primeiro fazer uma prática com Java, a linguagem orientada a objetos que vamos utilizar, para mais adiante conhecer a teoria sobre este paradigma de programação.

## Preparação do Ambiente 


Para fazer os exercícios, você vai precisar do ambiente de desenvolvimento Java (Java Development Kit - JDK) disponível em: http://www.oracle.com/technetwork/java/javase/downloads/index.html


## Exercícios


1. Baixe o programa [OlaMundo.java](OlaMundo.java).

2. Num terminal de comandos, compile o programa:

   ```
   javac OlaMundo.java
   ```
   O comando acima produz um arquivo .class para a classe contida em OlaMundo.java. Um arquivo .class contém um código (bytecode) interpretável por uma máquina virtual Java.

3. Execute o programa, informando o **nome da classe** que contém um método main:

   ```
   java -cp . OlaMundo
   ```
   Obs.: Se algo der errado e você estiver usando Windows, veja esta [página da Oracle](https://docs.oracle.com/javase/tutorial/getStarted/problems/index.html) sobre problemas comuns e suas soluções. 



4. Baixe o programa [Circle.java](Circle.java) e analise seu código. Você consegue prever a saída deste programa antes de executá-lo?

5. Compile e execute o programa:
   ```
   javac Circle.java
   java -cp . Circle
   ```

6. Baixe o programa [TestCircle.java](TestCircle.java) e coloque-o na mesma pasta do programa Circle.java.

7. No programa [TestCircle.java](TestCircle.java), inclua a seguinte linha de código ao final do método `main`:
    ```
    c1.r = 0.5;
    ```
    Compile o programa. Algo vai dar errado... Se o código fosse em C, isso estaria certo. Por que será que em Java é diferente? Aguarde o novo episódio, ou tente desvendar esee mistério consultando a bibliografia básica da disciplina :-) (Robert Sebesta. Conceitos de Linguagens de Programação. Bookman, 2018. Disponível no [Portal de E-books](https://www.ufsm.br/orgaos-suplementares/biblioteca/e-books-2/) da UFSM).
    
8. Depois dessa primeira experiência com Java em terminal / linha de comando, escolha um IDE que você goste e repita a execução dos programas desta prática. Avise no Discord se conseguiu ou não completar esta prática.
