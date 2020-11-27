CREATE TABLE IF NOT EXISTS classes(
                    id INTEGER NOT NULL AUTO_INCREMENT,
                    class VARCHAR(30) NOT NULL,
                    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS names(
                    id INTEGER NOT NULL AUTO_INCREMENT,
                    names VARCHAR(30) NOT NULL,
                    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO 'classes' VALUES (1,'Avenger'),(2,'Barbarian'),(3,'Bard'),
                            (4,'Battlemind'),(5,'Cleric'),(6,'Druid'),(7,'Fighter'),
                            (8,'Invoker'),(9,'Monk'),(10,'Paladin'),(11,'Ranger'),
                            (12,'Rouge'),(13,'Runepriest'),(14,'Sorcerer'),(15,'Swordmage'),
                            (16,'Warlock'),(17,'Wizard');
                            
INSERT INTO 'names' VALUES (1, 'Alvyn'),(2, 'Amber'),(3, 'Ander'),
                            (4, 'Arveene'), (5, 'Astorio'), (6, 'Balama'),
                            (7, 'Basha'), (8, 'Chant'), (9, 'Chen'),
                            (10, 'Flint'), (11, 'Glar'), (12, 'Kara'),
                            (13, 'Mei'), (14, 'Mumed');

