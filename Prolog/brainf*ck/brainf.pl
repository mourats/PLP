:- initialization main.
transpilador('<','--ptr;').
transpilador('>','++ptr;').
transpilador('+','++*ptr;').
transpilador('-','--*ptr;').
transpilador('.','putchar(*ptr);').
transpilador(',','*ptr=getchar();').
transpilador('[','while (*ptr) {').
transpilador(']','}').

converte([]) :- nl, halt(0).
converte([H|T]) :- 
    transpilador(H, X), write(X), converte(T).

main :- 
    read(Entrada), atom_chars(Entrada,Lista), converte(Lista).