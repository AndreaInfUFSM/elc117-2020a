# Prática: Programação funcional em Haskell


## Orientações

1. Nestes exercícios, vamos reunir tudo o que vimos até agora para construir programas completos, não só funções isoladas (de isolamento, já chega o social!!!! :see_no_evil:). Para isso, vamos precisar de mais alguns recursos de Haskell: let..in/where e I/O, explicados nestes [slides](https://docs.google.com/presentation/d/1X3hITYqBAuAtXhNdvEOFpknYbjRZsGg80c5-ITXar_Y/edit?usp=sharing).


2. Os exercícios não são para entregar, não se preocupe com nota agora. Use o Discord da disciplina para postar dúvidas e soluções, converse com colegas, "brinque" com a linguagem, use o interpretador interativo para testar funções rapidamente. Procure pensar diferente do que costuma fazer em linguagens imperativas. Quebre cada função em outras funções, reuse as que você já conhece, procure outras. 


## Aquecimento

1. Reescreva a função abaixo usando where (cuidado com o indent):
   ```haskell
   func1 :: [Int] -> Bool
   func1 lst =
     let expr1 = head lst + 20
         expr2 = last lst * 2
      in expr1 > expr2
   ```

2. Reescreva a função abaixo usando let..in (cuidado com o indent):
   ```haskell
   import Data.Char
   func2 :: String -> Bool
   func2 str = sumdigits > 50
     where digits = map digitToInt str
           sumdigits = sum digits
   ```

3. O que faz o programa abaixo?
   ```haskell
   testIO :: IO()
   testIO = do
     nome <- getLine
     let encode  = map (\c -> chr (ord c + 1)) nome
     putStrLn encode
   ```

4. Escreva um programa que leia um nome da entrada padrão e mostre uma mensagem usando este nome.

5. Escreva um programa que leia uma string da entrada padrão e aplique algum teste a esta string, mostrando uma mensagem para informar se o teste resultou positivo ou negativo.


6. Baixe o programa [validaCPF.hs](validaCPF.hs) e carregue-o no interpretador. Para executá-lo, chame a função `main`.  Examine o código e note que ele difere do código mostrado nos slides. Que diferenças você notou?

7. Modifique o código para incluir a parte de I/O que espera o usuário digitar o CPF (ver versões do código nos slides).

   

## Geração de SVG

Nesta parte, vamos usar um programa em Haskell que gera uma imagem em [formato SVG](https://www.w3schools.com/graphics/svg_intro.asp) (//Scalable Vector Graphics//).  Esse formato de desenho vetorial usa comandos textuais (tags XML) para representar elementos gráficos. Programas que entendem SVG interpretam essas tags e mostram a imagem correspondente. O programa que usaremos gera uma imagem com retângulos coloridos.

1. Baixe o programa [svgRects.hs](svgRects.hs) e execute-o chamando a função `main`. Isso deverá gerar um arquivo chamado `rects.svg`. Visualize esse arquivo usando o navegador ou outro programa que entenda SVG.

2. Abra o código e procure entendê-lo. Onde são definidas as coordenadas dos retângulos? Altere algumas coordenadas e gere a imagem novamente.

3. Onde são definidas as cores dos retângulos? Altere algumas cores e gere a imagem novamente.

4. Note que as listas de retângulos e cores estão "hard-coded" e isso não é uma boa prática. Em especial, seria inviável fazer isso para listas muito grandes. A solução para isso é gerar listas programaticamente, criando funções para isso! Explore esta abordagem criando outras listas de retângulos e cores, aplicando operações sobre as listas originais. Por exemplo: você pode gerar novos retângulos somando uma constante sobre as coordenadas dos retângulos originais, ou criar novas cores trocando os valores de (r,g,b). Essas novas listas podem ser concatenadas, replicadas, filtradas, etc. 


 



