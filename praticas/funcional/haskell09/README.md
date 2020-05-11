# Prática com Hlint


## Introdução

Você sabe o que é um ["linter"](https://en.wikipedia.org/wiki/Lint_(software))? É um tipo de ferramenta que analisa um código-fonte e sinaliza possíveis problemas nesse código. O nome vem de "lint", a primeira ferramenta construída com esse propósito, há décadas atrás, para a linguagem C. Hoje em dia, existem linters para as mais variadas linguagens. Alguns linters são bastante "espertos" e conseguem sugerir melhorias importantes no código. Nesta prática, vamos usar o Hlint, um linter para a linguagem Haskell.


## Instalação

- Para quem estiver usando Linux com alguma distribuição que use APT para instalar pacotes:
  ```
  sudo apt install hlint
  ```

- Para quem estiver usando o cabal como instalador de pacotes Haskell:
  ```
  cabal install hlint
  ```

- Para quem quiser fazer a prática no Repl.it, é possível usar o ambiente Polygott, um repl independente de linguagem que permite instalar pacotes e executar programas a partir de um terminal de comandos. Se quiser usar essa opção, faça fork de https://repl.it/@AndreaSchwertne/haskell09 e clique em `run` para instalar o hlint.

  
## Exercícios

1. Teste a instalação do Hlint abrindo um terminal de comandos e digitando:
   ```
   hlint
   ```
   Se o comando não for encontrado, volte à etapa de instalação e procure por possíveis erros. 
   
   
2. Aplique o Hlint em **cada arquivo .hs** que você criou para o t4. Por exemplo:
   ```
   hlint Main.hs
   ```
   Se você optar por usar o Repl.it, vai ser necessário copiar os arquivos do t4 para dentro do projeto que instala o Hlint.
   
3. Para cada arquivo, analise as sugestões do Hlint e incorpore-as ao seu código, caso sejam pertinentes. Você provavelmente vai ver várias sugestões mais superficiais para remover parênteses, mas também algumas mais profundas, sugerindo uso de outras funções ou recursos de Haskell. 


4. Faça commit-push do seu código modificado no seu repositório do t4.


