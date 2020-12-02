from flask import Flask, Response, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from application import app, db
from application.models import Names
import random 
from random import randint

@app.route('/namegen', methods=['POST', 'GET'])
def namegen():
    rows = Names.query.count() #Total Number of rows
    randomid = randint(1, rows) #Generate random number 1 - number of rows
    pickonename = Names.query.get(randomid) #Pick one row depends on the randomid
    return Response(str(pickonename.names), mimetype='application/json')
    
