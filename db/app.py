from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import insert 
from os import getenv

app = Flask(__name__)
db = SQLAlchemy(app)

app.config['SQLALCHEMY_DATABASE_URI'] = getenv("DB_URI")

class classes(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	classnames = db.Column(db.String(30), nullable=False)

class names(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	names = db.Column(db.String(30), nullable=False)

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)