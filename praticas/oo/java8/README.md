# Prática: Programação Concorrente em Java


Nesta prática você vai exercitar mais conceitos de programação concorrente e orientada a objetos em Java. Em particular, vamos trabalhar com sincronização de threads, para tratar **condições de corrida** (race conditions).

Antes de fazer a prática, consulte estes [slides](https://docs.google.com/presentation/d/1k-3EpPzpnHgWlge-QT4N7MY8b5SQ4iEGQZaXzBm6Ir4/edit?usp=sharing) ou [vídeo](https://drive.google.com/file/d/1hkr0sgpsxBHHHOLbN2avQURBOPVd8mD8/view?usp=sharing).

1. Baixe o programa [OperacoesBancarias.java](OperacoesBancarias.java) e analise seu código. Veja que foi usada a palavra-chave `synchronized`, explicada nos slides. Execute o programa algumas vezes e verifique se o resultado é sempre correto.

2. Remova os termos `synchronized` dos métodos `deposita` e `retira`. Recompile o programa e execute-o algumas vezes. Verifique se ocorrem execuções com resultado correto e/ou incorreto.

3. Baixe o arquivo [threadabc.zip](threadabc.zip), que contém os arquivos para os próximos exercícios, conforme explicado ao final dos slides.

4. LEIA ISSO ANTES PARA RELEMBRAR O PROBLEMA: Neste programa, **3 threads** atualizam concorrentemente um **array compartilhado**, inserindo caracteres A, B ou C na próxima posição livre. Cada thread insere 20 caracteres, portanto, no final de cada rodada, a contagem de caracteres no array deve ser: A=20 B=20 C=20.

5. Execute o programa várias vezes e observe como a ordem de execução das threads pode variar. Além disso, observe que o resultado final nem sempre é correto (problema de **inconsistência de dados**).

6. Corrija o programa, utilizando um método `synchronized`. Identifique primeiro a classe que representa o objeto compartilhado, depois identifique o método que deve ser executado em exclusão mútua. 

7. Re-execute o programa algumas vezes para verificar a mudança no comportamento das execuções.

