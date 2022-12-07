/* USER DB Vers.2 */

/* DB */
DROP DATABASE IF EXISTS MichaelMueller;
CREATE DATABASE IF NOT EXISTS MichaelMueller;

/* Table users */
DROP TABLE IF EXISTS MichaelMueller.users;


CREATE TABLE IF NOT EXISTS MichaelMueller.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyNanme VARCHAR(20) NOT NULL,
    firstname VARCHAR(20) NOT NULL
);
DESCRIBE MichaelMueller.users;

/* Daten */
INSERT INTO 
    MichaelMueller.users(firstname,familyNanme,userName,userPwd) 
    VALUES ( "Max", "Mütze","max","1234"),
            ( "Maxine", "Mütze","maxine","+23Ml-.;"),
            ( "Max", "Mützerich","maxl","user1234")
            ;

/* Inhalte : Ergebnistabelle */
SELECT * FROM MichaelMueller.users;

