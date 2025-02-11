/*-----------Strukturen---------*/

/* Datenbanken auf Server anzeigen */
#SHOW DATABASES;

/* DB MichaelMueller löschen, falls vorhanden*/
DROP DATABASE IF EXISTS MichaelMueller;

/* DB MichaelMueller anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS MichaelMueller;

/* DB auswählen */
USE MichaelMueller;


/* Tabelle anlegen, falls noch nicht vorhanden */


CREATE TABLE IF NOT EXISTS test
(
        name VARCHAR(20),
        age INT 

);
/* ALLE Tabellen in der DB anzeigen */
SHOW TABLES;

DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES ("Grizabella",29);
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test VALUES ();

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;