from app import db, classes, names

db.drop_all()
db.create_all()

addclass = [classes(classnames='Avenger'), classes(classnames='Barbarian'), classes(classnames='Bard'),
                    classes(classnames='Battlemind'), classes(classnames='Cleric'), classes(classnames='Druid'),
                    classes(classnames='Fighter'), classes(classnames='Invoker'), classes(classnames='Monk'),
                    classes(classnames='Paladin'), classes(classnames='Ranger'), classes(classnames='Rouge'),
                    classes(classnames='Runepriest'), classes(classnames='Sorcerer'), classes(classnames='Swordmage'), classes(classnames='Warlock'), classes(classnames='Wizard')
                    ]

addname = [names(names='Alvyn'), names(names='Amber'), names(names='Ander'),
                names(names='Arveene'), names(names='Astorio'), names(names='Balama'),
                names(names='Basha'), names(names='Chant'), names(names='Chen'),
                names(names='Flint'), names(names='Glar'), names(names='Kara'),
                names(names='Mei'), names(names='Mumed')]

db.session.add_all(addclass)
db.session.add_all(addname)
db.session.commit()