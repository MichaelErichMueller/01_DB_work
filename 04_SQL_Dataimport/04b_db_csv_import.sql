/* CRUD Create | Read | Update | Delete */  

-- CREATE: siehe 04_ ...ALTER

SELECT * FROM MichaelMueller.cats;

/* UPDATE --> Änderung(en) in bestehender Tab. */
UPDATE MichaelMueller.cats SET cat_name = "Alonzo" WHERE id = 2;
UPDATE MichaelMueller.cats SET fur_color = "grey" WHERE id = 3;
/*
/* READ - SELECT : NEUE Ergebnistabelle wird erstellt */
SELECT * FROM MichaelMueller.cats; -- gesamte Tabelle
SELECT cat_name FROM MichaelMueller.cats; -- einzelnes Feld
SELECT age,cat_name FROM MichaelMueller.cats; -- Felder kombiniert
SELECT cat_name AS "Katzen", age AS "Alter" FROM MichaelMueller.cats; -- Felder / neue Namen

/*Filtern durch WHERE*/
SELECT    cat_name AS "Katzen",    age AS "Alter"
FROM MichaelMueller.cats
#WHERE id = 1
#WHERE fur_color = "grey"
WHERE fur_color = "alpinaweiss"
#WHERE age >= 30
;

/* Delete - DS löschen | Vorsicht!! */
#DELETE FROM MichaelMueller.cats; -- Alle Daten sind weg!!
#DELETE FROM MichaelMueller.cats WHERE id = 2; -- Filter

SELECT * FROM MichaelMueller.cats;

