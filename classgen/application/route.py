from flask import Flask, Response, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from application import app, db
from application.models import Classes, Names
import random 
from random import randint

@app.route('/classgen', methods=['POST', 'GET'])
def classgen():
    rows = Classes.query.count()
    randomid = randint(1, rows)
    req = request.get_json()
    #all_classes = Classes.query.all()
    #randomclass = random.choices(all_classes)
    pickoneclass = Classes.query.get(1)
    classjson = pickoneclass
    #return {"id":pickoneclass}
    return jsonify({"class":pickoneclass})
    
    #return render_template('home.html', title="Class Generator", all_classes=all_classes, randomclass=randomclass)