/*-----------Strukturen UNIQUE------*/

/* Datenbanken auf Server anzeigen */
#SHOW DATABASES;

/* DB MichaelMueller löschen, falls vorhanden*/
DROP DATABASE IF EXISTS MichaelMueller;

/* DB MichaelMueller anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS MichaelMueller;

/* DB auswählen */
#USE MichaelMueller;


/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS MichaelMueller.test
#CREATE TABLE IF NOT EXISTS test ( entweder USE oder Test
(
        name VARCHAR(20) NOT NULL UNIQUE DEFAULT"TBA",
        age INT (3) NOT NULL DEFAULT 0
        

);
/* ALLE Tabellen in der DB anzeigen */
#SHOW TABLES;

DESCRIBE MichaelMueller.test;

/* ----- Daten ------- */
INSERT INTO MichaelMueller.test(name,age) VALUES ("Grizabella",29);
INSERT INTO MichaelMueller.test(age,name) VALUES (35,"Alonzo");
INSERT INTO MichaelMueller.test VALUES ();

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM MichaelMueller.test;

INSERT INTO MichaelMueller.test(age,name) VALUES (35,"Alonzo");
INSERT INTO MichaelMueller.test(age,name) VALUES (35,"Alonzo");

SELECT * FROM MichaelMueller.test;