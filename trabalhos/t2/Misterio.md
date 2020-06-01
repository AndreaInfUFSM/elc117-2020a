# Opção 1: Resolva um Mistério em Prolog


## O Contexto

Em uma tarde chuvosa de domingo, Mabel West convida Miss Marple e Hercule Poirot para tomar chá em sua casa. Entre bolinhos e conversas sobre um novo vírus que ameaça o planeta, Mabel conta o caso de um assassinato que está quebrando a cabeça de muitos detetives do país. Miss Marple e Hercule Poirot logo começam a raciocinar sobre as pistas, mas Mabel propõe algo diferente: resolver o mistério em Prolog, uma linguagem de programação para quem gosta de lógica!

Miss Marple e Hercule Poirot acham a ideia fantástica, mas não lembram bem a sintaxe do Prolog e precisam terminar o chá antes que esfrie. Assim, Mabel propõe chamar alunos de Paradigmas de Programação no Discord para ajudar a criar o programa. Você, aluno de Paradigmas, está craque no Prolog e manda um recado lá para a turma do chá: "Deixa comigo que eu resolvo!".


## O Mistério

Em uma aglomeração (festinha) clandestina na casa do milionário Sr. Dollars, o anfitrião é assassinado! Todos os presentes na festa foram imediatamente detidos como suspeitos: eram 3 homens (Edward, David, Frank) e 3 mulheres (Alice, Brenda, Catherine). Cada suspeito estava em um cômodo da casa: Banheiro, Sala de Jantar, Cozinha, Sala de Estar, Despensa e Escritório. Em cada cômodo, foi encontrada uma possível arma do crime: Gás, Veneno, Corda, Saco Plástico, Travesseiro e Smartphone.

Para descobrir quem matou o Sr. Dollars, você precisa descobrir onde cada pessoa estava e qual arma foi encontrada em cada cômodo. É preciso responder a todas as perguntas para solucionar completamente o crime.

As pistas e perguntas são as seguintes:

1. Alice estava no escritório ou no banheiro. Catherine estava em um desses cômodos, mas não onde estava Alice. Em qual cômodo estava Alice?

2. O homem na cozinha não foi encontrado com a corda, saco plástico ou smartphone. Qual arma, então, foi encontrada na cozinha, sabendo-se que não era um travesseiro? E qual suspeito foi encontrado na cozinha?

3. A pessoa com o saco plástico, que não era nem Alice nem Edward, não estava no banheiro nem na sala de jantar. Quem estava com o saco plástico?

4. A mulher com a corda foi encontrada no escritório. Quem estava com a corda?

5. A arma na sala de estar foi encontrada com David ou Edward. Qual arma estava na sala de estar?

6. O smartphone não estava na sala de jantar. Então, onde estava o smartphone?

7. Catherine não estava com a arma encontrada no escritório ou na despensa. Que arma foi encontrada com Catherine?

8. O travesseiro estava no cômodo com Edward. Em qual cômodo foi encontrado o travesseiro?

9. Os detetives descobriram que o Sr. Dollars foi assassinado com gás na despensa. Quem estava neste cômodo deve ser preso pelo assassinato do Sr. Dollars. Afinal, quem assassinou o anfitrião?




## O Trabalho

- Você deve escrever um programa que expresse as pistas em Prolog sob forma de predicados.

- Você não deve fazer deduções "de cabeça" para simplificar o programa :-)

- Seu programa deve incluir uma regra principal que forneça as respostas a todas as perguntas.

- Entregue seu programa num arquivo nomeado `xacomigo.pl`.

Dica: Cuidado com negações em Prolog.

