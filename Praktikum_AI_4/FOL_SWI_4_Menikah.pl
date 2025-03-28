menikah(wati, andi).
anakKandung(Wati,budi).
saudaraKembar(budi, andi).

is_saudaraKandung(X, Y) :-
    anakKandung(X, Z),
    anakKandung(Y, Z),
    X \= Y.

is_keponakan(Z, Y) :-
    anakKandung(Z, X),
    saudaraKembar(X, Y).

not(sah(menikah(Z, Y))) :-
    is_keponakan(Z, Y).
