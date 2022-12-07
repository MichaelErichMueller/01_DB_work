/* Datenimport - csv mit ID */

/* DB */
DROP DATABASE IF EXISTS MichaelMueller;
CREATE DATABASE IF NOT EXISTS MichaelMueller;

/* Tabelle cats*/
DROP TABLE IF EXISTS MichaelMueller.cats;

CREATE TABLE IF NOT EXISTS MichaelMueller.cats
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

DESCRIBE MichaelMueller.cats;

-- CSV-Datei parsen
LOAD DATA LOCAL INFILE "04_SQL_Dataimport/data/cats_export_no_id.csv"
INTO TABLE MichaelMueller.cats
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(cat_name,fur_color,age) -- Daten in die richtigen Felder sortieren
;

SELECT * FROM MichaelMueller.cats;