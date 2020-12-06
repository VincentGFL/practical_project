from flask import Flask, Response, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from application import app, db
from application.models import Classes
import random 
from random import randint

@app.route('/classgen', methods=['POST', 'GET'])
def classgen():
    rows = Classes.query.count() #Total Number of rows
    randomid = randint(1, rows) #Generate random number 1 - number of rows
    pickoneclass = Classes.query.filter_by(id=randomid).first() #Pick one row depends on the randomid
    return Response(str(pickoneclass.classnames), mimetype='text/plain')
    