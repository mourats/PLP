:- initialization main.

:- gosta(​"Ana"​, "Peixe"​).

main:-
    read(user_input, Pessoa),
    gosta(Pessoa, Comida),
    writeln(Comida).

