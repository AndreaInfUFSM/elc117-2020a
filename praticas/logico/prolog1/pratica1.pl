% Exemplo de programa em Prolog que define
% fatos e regras sobre pessoas e localizacoes geograficas.

localizado_em(santa_maria, rs).
localizado_em(salvador, bahia).
localizado_em(rs, brasil).
localizado_em(bahia, brasil).
localizado_em(paris, franca).
localizado_em(franca, europa).

nasceu_em(andre, santa_maria).
nasceu_em(joao, salvador).
nasceu_em(X, Y) :- localizado_em(Z, Y), nasceu_em(X, Z).

mora_em(andre, paris).
mora_em(joao, salvador).
mora_em(X, Y) :- localizado_em(Z, Y), mora_em(X, Z).

idade(andre, 25).
idade(joao, 32).

gaucho(X) :- nasceu_em(X, rs).
brasileiro(X) :- nasceu_em(X, brasil).
europeu(X) :- nasceu_em(X, europa).

