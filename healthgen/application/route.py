from flask import render_template, request,Response, url_for, redirect
from application import app
import random
import requests

@app.route('/', methods = ['GET', 'POST'])
@app.route('/healthgen', methods = ['GET', 'POST'])
def healthgenerator():
    
    character = request.data.decode('utf-8')
    health = 0
    if (len(character)-1)%2 == 0:
        health = (len(character)-1)*2
    else:
        health = len(character)-1

    return Response(str(health), mimetype='text/plain')