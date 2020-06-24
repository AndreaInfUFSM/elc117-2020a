# Prática: Herança em Java


1. Baixe o programa [Inheritance.java](Inheritance.java).

2. Qual será a saída deste programa? Tente responder sem executá-lo. 

3. Compile o programa e execute-o, verificando se a saída é igual à esperada.

4. Em [Inheritance.java](Inheritance.java), inclua o código abaixo na classe `Student`. Este código testa se o nome do estudante começa com um dado caracter.
   ```java
   public boolean testName(char c) {
     return name.toCharArray()[0] == c;
   }
   ```

5. Compile o programa modificado. O que acontece?

6. Na classe `Person`, substitua a visibilidade `private` por `protected` e compile novamente o programa. O que acontece?

7. Na classe `Main`, modifique o método `main`, de modo a usar o método `testName` em um objeto da classe `Student`.

8. Crie uma classe `PhDStudent` derivada de `Student`. No seu construtor, mostre uma mensagem na saída padrão para saber quando ele foi chamado.

9. Altere o método `main` para criar um objeto da classe `PhDStudent`. Qual a sequência de construtores chamados?

10. Em Java, todas as classes derivam da classe [`Object`](https://docs.oracle.com/en/java/javase/14/docs/api/java.base/java/lang/Object.html). Consulte os métodos definidos nesta classe e estude os métodos `clone`, `equals` e `getClass`. Teste estes métodos com um objeto da classe `PhDStudent`, inserindo código no método `main` da classe `Main`.
