from application import db
from application.models import Classes, Names

db.drop_all()
db.create_all()

addclass = [Classes(classnames='Avenger'), Classes(classnames='Barbarian'), Classes(classnames='Bard'),
                    Classes(classnames='Battlemind'), Classes(classnames='Cleric'), Classes(classnames='Druid'),
                    Classes(classnames='Fighter'), Classes(classnames='Invoker'), Classes(classnames='Monk'),
                    Classes(classnames='Paladin'), Classes(classnames='Ranger'), Classes(classnames='Rouge'),
                    Classes(classnames='Runepriest'), Classes(classnames='Sorcerer'), Classes(classnames='Swordmage'), Classes(classnames='Warlock'), Classes(classnames='Wizard')
                    ]

addname = [Names(names='Alvyn'), Names(names='Amber'), Names(names='Ander'),
                Names(names='Arveene'), Names(names='Astorio'), Names(names='Balama'),
                Names(names='Basha'), Names(names='Chant'), Names(names='Chen'),
                Names(names='Flint'), Names(names='Glar'), Names(names='Kara'),
                Names(names='Mei'), Names(names='Mumed')]

db.session.add_all(addclass)
db.session.add_all(addname)
db.session.commit()