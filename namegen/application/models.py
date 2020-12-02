from application import db

class Classes(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	classnames = db.Column(db.String(30), nullable=False)

class Names(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	names = db.Column(db.String(30), nullable=False)