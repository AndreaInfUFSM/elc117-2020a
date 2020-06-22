# Prática: POO em Java



## Orientações 

Nesta prática você vai exercitar alguns conceitos de orientação a objetos resumidos nos slides sobre [encapsulamento, classes e objetos em Java](https://docs.google.com/presentation/d/1mgI4MwuOgrX_ohtxUECe-ts0qDQH9SKjgiSzLfg2pHg/edit?usp=sharing) e também nos slides sobre [uso de static em Java](https://docs.google.com/presentation/d/1VLjYnXuZ_Wisa7lZ0ANWdhFb4vPrgfopJv1oQC7bLzk/edit?usp=sharing). Além dos slides, há links para outros materiais complementares, indicados ao longo da prática.


## Classe User

1. Baixe o programa [User.java](User.java).

2. Você consegue deduzir qual será a saída do `main` do programa sem executá-lo? Pense antes e depois execute o programa para conferir.

3. Acrescente a seguinte linha ao final do método `main`:
   ```
   System.out.println(User.getCount());
   ```
   Qual será a saída do programa agora? Execute o programa para conferir.
   
4. Acrescente a seguinte linha ao final do método `main`:
   ```
   System.out.println(name);
   ```
   Compile o programa e observe o erro produzido.

5. Substitua a linha com erro do exercício anterior pela seguinte linha:
   ```
   System.out.println(count);
   ```
   Compile o programa. Por que, ao contrário do exercício anterior, esta linha não causa erro de compilação?
   
6. Quais são os construtores da classe `User`?

7. Observe que os construtores usam uma palavra reservada do Java: `this`.  Veja que os usos são diferentes: no primeiro, `this` é usado como se fosse uma chamada de método; no segundo, `this` é usado como se fosse uma referência para um objeto. Consulte o tutorial da Oracle para saber mais sobre isso: https://docs.oracle.com/javase/tutorial/java/javaOO/thiskey.html


8. Se você leu o tutorial com atenção, saberá por que o código abaixo não irá compilar:
   ```
   public User() {
     System.out.println("construtor chamado");
     this("randomname");
   }
   ```
   Compile o código e confira o motivo.
   



## Usando classes do pacote Java Swing
   
   
Swing é um dos toolkits que podem ser usados para criar interfaces gráficas em Java para desktop. Ele oferece várias classes úteis e é distribuído junto com várias versões do kit de desenvolvimento Java (JDK). Existem outros toolkits similares, por exemplo JavaFX, JGoodies, Apache Pivot, etc., que são distribuídos separadamente.

Vamos partir de um exemplo simples com Swing para depois modificá-lo e usá-lo junto com a classe `User` dos exercícios anteriores. Usaremos o repl.it, para você ver que é possível usar Java com interface gráfica em nuvem, mas você pode copiar os exemplos e abri-los localmente no seu IDE favorito.

1. Clique em run para executar o código disponível em https://repl.it/@AndreaSchwertne/java03swing. Clique no botão na interface e veja o que acontece. Você consegue identificar a parte do código que trata o clique no botão? Essa parte usa alguns recursos de Java/OO que ainda não vimos, mas, basicamente, chamamos o método `addActionListener` do objeto designado por `b` para indicar o código que será executado quando o botão for clicado. O restante do código usa recursos de OO em Java que veremos mais adiante.

2. Faça fork do código e altere parâmetros do botão em `setBounds`.  Veja a documentação para a classe `JButton` em https://docs.oracle.com/en/java/javase/11/docs/api/java.desktop/javax/swing/JButton.html (esta classe usa conceitos de OO que veremos adiante: herança e polimorfismo).

3. Em https://repl.it/@AndreaSchwertne/java03swinguser  há uma versão modificada do exemplo anterior, agora com um campo de texto (`JTextField`) além do botão. Clique em run para executar o código, preencha o campo e clique no botão para ver o que acontece.

4. Veja que neste repl.it há mais arquivos. Em NewMain.java, temos um código que usa a classe User dos exercícios anteriores. Com poucas linhas a mais, o código cria um novo objeto User e o adiciona numa lista, a cada vez que o botão é clicado. A lista é da classe `ArrayList`. Veja mais sobre isso aqui: https://www.caelum.com.br/apostila-java-orientacao-objetos/collections-framework/#listas-javautillist

5. Veja que `NewMain.java` possui um método `main`. Para executá-lo no repl.it, não vamos poder usar o botão run, pois esse botão está associado a `Main.java`. Vamos usar o terminal: clique Ctrl-C no terminal do repl.it para ter acesso ao prompt de comandos. Agora compile e execute o programa `NewMain.java`: 
   ```
   > javac *.java
   > java NewMain
   ```
6. Altere este código, acrescentando um novo botão na interface. Ao clicar neste botão, deverá ser mostrada, no terminal, a lista de todos os objetos da classe User inseridos no ArrayList. Sim, você vai ter que pesquisar como percorrer um ArrayList.



