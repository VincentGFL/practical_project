from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from os import getenv

app = Flask(__name__)
db = SQLAlchemy(app)

app.config['SQLALCHEMY_DATABASE_URI'] = getenv("DB_URI")

class classes(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	classnames = db.Column(db.String(30), nullable=False)
	def __repr__(self):
		return ''.join(['Class ID: ', str(self.id), '\r\n', 'Class: ', self.classnames, '\n'])

@app.route('/')
def classhome():
  all_classes = classes.query.all()
  return render_template('home.html', all_classes=all_classes)

if __name__=='__main__':
  app.run(host='0.0.0.0', port=5000, debug=True)