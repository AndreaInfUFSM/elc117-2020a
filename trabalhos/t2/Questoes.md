# Trabalho 2: Questões de Exames

Este enunciado refere-se à parte comum do trabalho de Prolog, isto é, a parte que todos devem entregar.

Você conhece alguns exames nacionais aplicados a estudantes do ensino superior? Um deles é o ENADE, aplicado pelo MEC de três em três anos (talvez você precise fazer este exame para se diplomar). Outro exame é o POSCOMP, aplicado anualmente pela Sociedade Brasileira de Computação a estudantes que desejam ingressar em cursos de pós-graduação na área.

Questões sobre linguagens de programação são comuns nesses exames. Abaixo temos 2 questões sobre Prolog selecionadas dessas provas.

Sua tarefa será resolver e explicar a solução dessas questões, usando o que você aprendeu até agora e também consultando material complementar. 


Você deverá **entregar a explicação** em uma das seguintes formas:
- um vídeo mostrando slides, com explicação em áudio
- um áudio explicando as soluções
- uma animação criada usando algum software como Visme, Prezi, Genially, Beautiful.ai, alguma biblioteca em JavaScript, etc. 

## Questão 1

(POSCOMP 2006) Considere o programa Prolog:
```prolog
blabla([ ],L,L).
blabla([X|L1],L2,[X|L3]):- blabla(L1,L2,L3).
```
Quantas possíveis respostas a interrogação abaixo fornece (considerando o backtracking)?
```
?- blabla(L1,L2,[a,b]).
```

- a) 1
- b) 2
- c) 3
- d) 4
- e) 5



## Questão 2


(ENADE 2014, Ciência da Computação) Diferentes implementações da linguagem de programação PROLOG permitem predicados com parâmetros, aceitam as operações de conjunção e disjunção lógica, utilizando os símbolos vírgula (conjunção) e ponto e vírgula (disjunção), e a negação lógica com o predicado not. 

Considere que um programador propôs as cláusulas mostradas a seguir, definidas em uma
linguagem de programação como PROLOG, como parte da verificação de critérios para seleção de candidatos a uma chapa de presidente e vice-presidente de uma empresa. Estas cláusulas apresentam as premissas para chegar às conclusões *selecionados, desconsiderados e descartado*, a partir da possibilidade da existência de fatos ou regras com o identificador superior.

```prolog
superior(jorge).
superior(ana).
selecionados(P,Q) :- superior(P), superior(Q).
desconsiderados(P,Q) :- not(superior(P)); not(superior(Q)).
descartado(P) :- not(superior(P)).
```

Considerando apenas as colocações e cláusulas acima e a hipótese de mundo fechado (*closed world assumption*), avalie as afirmações a seguir.

I. Para todos valores dos parâmetros P e Q, o predicado `selecionados` retornará um
valor lógico falso.
II. Para todos os valores de P e Q, os predicados `selecionados` e `desconsiderados` retornarão valores lógicos diferentes.
III. A conjunção dos predicados `selecionados` e `desconsiderados`, para quaisquer valores de P e Q, retornará um valor lógico verdadeiro.
IV. Para qualquer valor de parâmetro P, o predicado `descartado` retornará um valor verdadeiro.
V. A disjunção dos predicados `selecionados` e `desconsiderados`, para quaisquer valores de P e Q, retornará um valor lógico verdadeiro.

É correto apenas o que se afirma em
- A. I e II
- B. I e III
- C. II e V
- D. III e IV
- E. IV e V


## Entrega


Entregue o material produzido no repositório do t2, junto com os demais arquivos.

