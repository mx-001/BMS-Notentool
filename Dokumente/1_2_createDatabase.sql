-- ---------------------------------------------------------------------------------------------------------------------
-- 2. Anlegen der Datenbank
-- ---------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------
-- 2.1 Alle verfügbaren Datenbank-Instanzen anzeigen lassen
-- ---------------------------------------------------------------------------------------------------------------------
SHOW DATABASES;

-- ---------------------------------------------------------------------------------------------------------------------
-- 2.2 Gegebenenfalls müssen wir DB-Instanzen löschen
-- ---------------------------------------------------------------------------------------------------------------------
DROP DATABASE appDB;



-- ---------------------------------------------------------------------------------------------------------------------
-- 2.3 Anlegen einer druckfrischen Datenbank-Instanz
-- ---------------------------------------------------------------------------------------------------------------------
CREATE DATABASE appDB /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

