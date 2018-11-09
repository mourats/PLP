:- initialization main.

lista(0, Troco).
lista(Quant, Troco):- read(Dinheiro), read(Marcas), calcula(Dinheiro, Marcas, Troco), K is Quant - 1, lista(K, Troco). 

calcula(Dinheiro, Marcas, Troco):- read(PrimeiraMarca), K is Marcas -1, lerMarcas(K, PrimeiraMarca, Dinheiro, Troco).

lerMarcas(0, Menor, Dinheiro, Troco).
lerMarcas(Marcas, Menor, Dinheiro, Troco):- read(Marca)-> 
(Marca < Menor, K is Marcas - 1, T is mod(Dinheiro, Marca), lerMarcas(K, Marca, Dinheiro, T); 
K is Marcas - 1, T is mod(Dinheiro, Menor), lerMarcas(K, Menor, Dinheiro, T)).

main:-
    read(Quant),    
    lista(Quant, Troco),
    write(Troco),nl.