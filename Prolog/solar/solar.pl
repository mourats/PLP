:-initialization(main).
conversao("Terra",1).
conversao("Mercurio",0.2408467).
conversao("Venus",0.61519726).
conversao("Marte",1.8808158).
conversao("Jupter",11.862615).
conversao("Saturno",29.447498).
conversao("Urano",84.016846).
conversao("Netuno",164.79132).
idadeTerra(Segundos,R):- R is Segundos / 31557600.
calcAnos(Planeta,Segundos,Anos):- idadeTerra(Segundos,R),
 conversao(Planeta,Taxa), Anos is round(R * Taxa).
readString(X):-
    read_line_to_string(user_input, X).
readNum(X):-
read_line_to_codes(user_input,Y),
string_to_atom(Y, Z),
atom_number(Z,X).
main():-
readString(Planeta),
readNum(Idade),
calcAnos(Planeta, Idade, Anos),
write(Anos),
write(" Anos").