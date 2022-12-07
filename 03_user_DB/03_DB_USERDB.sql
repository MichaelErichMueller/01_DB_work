/* USER DB Vers.1 */

/* DB */
DROP DATABASE IF EXISTS MichaelMueller;
CREATE DATABASE IF NOT EXISTS MichaelMueller;

/* Table users */
DROP TABLE IF EXISTS MichaelMueller.users;


CREATE TABLE IF NOT EXISTS MichaelMueller.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    familyNanme VARCHAR(20) NOT NULL,
    firstname VARCHAR(20) NOT NULL,
);
DESCRIBE MichaelMueller.users;

/* Daten */
INSERT INTO MichaelMueller.users(firstname,familyNanme,userName) VALUES 
( "Max", "Mütze","max");
INSERT INTO MichaelMueller.users(firstname,familyNanme,userName) VALUES 
( "Maxine", "Mütze","maxine");
INSERT INTO MichaelMueller.users(firstname,familyNanme,userName) VALUES 
( "Max", "Mützerich","maxl");

/* Inhalte : Ergebnistabelle */
SELECT * FROM MichaelMueller.users;
