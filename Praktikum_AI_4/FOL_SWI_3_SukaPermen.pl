anakIbu(andi).
anakIbu(budi).
anakIbu(cika).
anakIbu(dani).
anakIbu(emil).
not(anakIbu(fadil)).

sukaPermen(andi).
sukaPermen(budi).
sukaPermen(cika).
not(sukaPermen(dani)).
not(sukaPermen(emil)).

siapa_anak_Ibu(X) :- anakIbu(X).
siapa_dapat_permen(X) :- sukaPermen(X), anakIbu(X).
siapa_dapat_uang_ibu(X) :- not(sukaPermen(X)), anakIbu(X).
ga_dapat_uang(X) :- not(anakIbu(X)).
