# Prática: POO em Java



## Orientações 

Nesta prática você vai exercitar alguns conceitos de orientação a objetos resumidos nos slides sobre [Encapsulamento, classes e objetos em Java](https://drive.google.com/open?id=1S3Deuzbxmx71AIxZufadF7MTFq26WQ3_4ug4AtXcXi4). 


## Classe Circle

1. Baixe o programa [Circle.java](Circle.java).

2. Acrescente um método `public void setRadius(double radius)` à classe Circle, para alterar o raio de um círculo.

3. Modifique o método `main` para chamar o método `setRadius` no círculo `c`.

4. Acrescente as seguintes linhas ao final do método `main`:
   ```
   Circle c2;
   c2.setRadius(5.0);
   ```
   Compile o programa. O que acontece?

5. Corrija o programa, criando um objeto da classe Circle que será referenciado por `c2`. Compile novamente o programa.

6. Acrescente um novo construtor à classe `Circle`, que receba valores para `x`, `y` e `r`.

7. Modifique o método `main` para criar outros objetos da classe `Circle`, usando o novo construtor. Mostre a área dos novos objetos.

8. Baixe o programa [TestCircle.java](TestCircle.java) e **coloque-o na mesma pasta** do programa [Circle.java](Circle.java). 

9. No programa [TestCircle.java](TestCircle.java), teremos um erro de compilação se acrescentarmos este código ao final do método `main`:
    ```
    c1.r = 0.5;
    ```
    Este erro se deve à visibilidade `private` do atributo `r`. Caso o atributo deva poder ser alterado, a forma mais recomendada é definir um método *setter*. O método `setRadius`  é um exemplo de *setter*. Outra opção (menos recomendada, mas usada na prática em classes muito pequenas ou para atributos constantes) seria alterar a visibilidade do atributo para `public`. Teste essa opção no atributo  `r` de `Circle` e observe que o erro de compilação fica resolvido.
   

10. Agora restaure para `private` a visibilidade do atributo `r` no programa [Circle.java](Circle.java). Inclua a seguinte linha de código ao final do método `main`:
    ```
    c.r = 0.5;
    ```
    Compile o programa e veja que não haverá erro relacionado à visibilidade. Qual será o motivo disso?
   

11. No programa [Circle.java](Circle.java), acrescente a seguinte linha no construtor `Circle()`:
    ```
    System.out.println("New Circle");
    ```
    Compile e execute os programas [Circle.java](Circle.java) e [TestCircle.java](TestCircle.java), observando as saídas.

12. No programa [TestCircle.java](TestCircle.java), acrescente a seguinte linha ao final do método `main`:
    ```
    Circle[] circs = new Circle[10];
    ```
    Você acha que a saída do programa será modificada?

13. Acrescente as seguintes linhas ao programa [TestCircle.java](TestCircle.java):
    ```java
       for (int i = 0; i < circs.length; i++) {
          circs[i] = new Circle();
       }
    ```
    Qual será a saída do programa agora?



## Classe Point 

1. Crie uma classe denominada ``Point``, que armazene as coordenadas ``(x,y)`` de um ponto num plano. A coordenada default para qualquer ponto deve ser ``(0.0,0.0)``. Além do construtor, esta classe deve conter:

   - um método que desloque as coordenadas de um ponto (x,y) para as coordenadas (x+dx,x+dy), sendo dx e dy argumentos do método

   - um método que calcule a distância entre 2 pontos (x1,y1) e (x2,y2) segundo o teorema de Pitágoras: 
     ```
     dx = x2 - x1
     dy = y2 - y1
     distancia = sqrt(dx*dx + dy*dy)
     ```
     
   **Dica**: para o cálculo da raiz quadrada, consulte os exemplos da seção [Beyond Basic Arithmetic](http://download.oracle.com/javase/tutorial/java/data/beyondmath.html), na página de [tutoriais Java](http://download.oracle.com/javase/tutorial/) da Oracle. 

2. Crie um programa Java que utilize a classe `Point` do exercício anterior.

 
