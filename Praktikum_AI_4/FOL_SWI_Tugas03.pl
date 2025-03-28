% Fakta hubungan ayah
ayah(david, john).
ayah(david, liza).
ayah(jack, ray).
ayah(john, peter).
ayah(john, mary).

% Fakta hubungan ibu
ibu(amy, john).
ibu(amy, liza).
ibu(karen, ray).
ibu(susan, peter).
ibu(susan, mary).

% Aturan hubungan keluarga
is_ayah(X, Y) :- ayah(X, Y).
is_ibu(X, Y) :- ibu(X, Y).
is_orangtua(X, Y) :- ayah(X, Y); ibu(X, Y).
is_anak(Y, X) :- is_orangtua(X, Y).
is_saudara(Y, Z) :- is_orangtua(X, Y), is_orangtua(X, Z), Y \= Z.
is_kakek(X, Z) :- ayah(X, Y), (ayah(Y, Z); ibu(Y, Z)).
is_nenek(X, Z) :- ibu(X, Y), (ayah(Y, Z); ibu(Y, Z)).
