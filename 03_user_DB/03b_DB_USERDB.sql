/* USER DB Vers.3 */

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
-- Besser : PWDS verschlüsselt, zB. als SAH1-Hash
INSERT INTO 
    MichaelMueller.users(firstname,familyNanme,userName,userPwd) 
    VALUES  ( "Max", "Mütze","max",SHA1("1234")),
            ( "Maxine", "Mütze","maxine",SHA1("+23Ml-.;")),
            ( "Max", "Mützerich","maxl",SHA1("user1234"))
            ;

/* Inhalte : Ergebnistabelle */
SELECT * FROM MichaelMueller.users;

/* Änderungen an bestehender Tabelle / Struktur */

ALTER TABLE 
    MichaelMueller.users
ADD 
    userPLZ INT(5) NOT NULL DEFAULT 0
    ;
    
    DESCRIBE MichaelMueller.users;
    SELECT * FROM MichaelMueller.users;
    
    /* Update vo Daten */
UPDATE MichaelMueller.users SET userPLZ = 70367 WHERE firstName = "Max";
UPDATE MichaelMueller.users SET userPLZ = 70462 WHERE id = 2;



/* Inhalte : Ergebnistabelle */
SELECT * FROM MichaelMueller.users;