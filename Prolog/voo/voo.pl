:- initialization main.

melhor(Alcool, Gasolina, Litros, Valor):- Gasolina2 is Gasolina * 0.7 -> (Alcool >= Gasolina2, Valor is Litros * Gasolina; Alcool < Gasolina2, Valor is Litros * Alcool).

comparacao(Ideal, Atual):- 
    repeat,
    Aproximacao is abs(Ideal - Atual),
    read_line_to_codes(user_input, N),
    string_to_atom(N,N2),
    atom_number(N2,Nova) -> (Nova == Ideal, write("OK"),nl,halt(0); abs(Ideal - Nova) > Aproximacao, write("PERIGO"),nl, comparacao(Ideal, Nova); abs(Ideal - Nova) < Aproximacao, write("ADEQUADO"),nl, comparacao(Ideal, Nova)).


main:-
    repeat,
    read_line_to_codes(user_input, X),
    string_to_atom(X,X2),
    atom_number(X2,Ideal),
    read_line_to_codes(user_input, Y),
    string_to_atom(Y,Y2),
    atom_number(Y2,Atual),
    comparacao(Ideal, Atual).