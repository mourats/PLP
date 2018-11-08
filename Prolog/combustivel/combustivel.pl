:- initialization main.

melhor(Alcool, Gasolina, Litros, Valor):- Gasolina2 is Gasolina * 0.7 -> (Alcool >= Gasolina2, Valor is Litros * Gasolina; Alcool < Gasolina2, Valor is Litros * Alcool).

main:-
    repeat,
    read_line_to_codes(user_input, X),
    string_to_atom(X,X2),
    atom_number(X2,Alcool),
    read_line_to_codes(user_input, Y),
    string_to_atom(Y,Y2),
    atom_number(Y2,Gasolina),
    read_line_to_codes(user_input, L),
    string_to_atom(L,L2),
    atom_number(L2,Litros),
    melhor(Alcool, Gasolina, Litros, Valor),
    write(Valor),nl,
    halt(0).