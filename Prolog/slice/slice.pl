:- initialization main.
readStr(String) :- read_line_to_string(user_input, String).
readNumber(Number) :- read_line_to_codes(user_input, Codes),
                      string_to_atom(Codes, Atom),
                      atom_number(Atom, Number).
main :- read(L), read(X), read(Y), S1 is X, X1 is X+1, Y1 is Y+1 , TEST is 2*(X-Y+1) -> (
                 not(vazia(L)),length(L,I), length(L,Q),sliceD(L,X1,Y1,S1,R), I >= TEST, X >= 0, Y < Q, writeln(R);
                write("INVALIDO")).
sliceD([X|_],1,1,S1,[X,S1]).
sliceD([X|Xs],1,E,S1,[X,S1|Ys]) :- E > 1, 
   E1 is E - 1, S2 is S1 + 1, sliceD(Xs,1,E1,S2,Ys).
sliceD([_|Xs],S,E,S1,Ys) :- S > 1, 
   SS is S - 1, E1 is E - 1, sliceD(Xs,SS,E1,S1,Ys).
vazia([]).