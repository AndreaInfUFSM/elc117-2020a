# Exercício: Resolvendo problemas de lógica em Prolog


## Objetivo

O objetivo deste exercício é ilustrar a resolução de um problema de lógica em Prolog. Pense em como você resolveria este problema sem o uso do computador. Depois estude a solução em Prolog.

## Problema

Há 5 casas de diferentes cores, com donos de diferentes nacionalidades. Os proprietários bebem diferentes bebidas, fumam diferentes cigarros e têm diferentes animais de estimação.

Sabe-se que:

1. O inglês vive na casa vermelha.
2. O sueco tem cachorros.
3. O dinamarquês bebe chá.
4. A casa verde fica à esquerda da casa branca.
5. O dono da casa verde bebe café.
6. A pessoa que fuma Pall Mall cria pássaros.
7. O dono da casa amarela fuma Dunhill.
8. O homem que vive na casa do centro bebe leite.
9. O norueguês vive na primeira casa.
10. O homem que fuma Blends vive ao lado do que tem gatos.
11. O homem que cria cavalos vive ao lado do que fuma Dunhill.
12. O homem que fuma Bluemaster bebe cerveja.
13. O alemão fuma Prince.
14. O norueguês vive ao lado da casa azul.
15. O homem que fuma Blends é vizinho do que bebe água.

Pergunta-se: QUEM TEM UM PEIXE?"

## Solução em Prolog

- Veja [aqui](resolve-charada-einstein.pl) uma solução para este problema em linguagem Prolog.

- Carregue o programa no interpretador Prolog.

- Consulte a resposta à pergunta:
```
?- solucao(_, DonoPeixe).
```

- Consulte a lista completa de casas:
```
?- solucao(Casas, _).
```
