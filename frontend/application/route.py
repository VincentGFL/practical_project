from flask import Flask, render_template, url_for
from application import app
import requests

@app.route('/', methods=['POST','GET'])
def index():
    classes = requests.get("http://classgen:5001/classgen")
    names = requests.get("http://namegen:5002/namegen")

    character = str(classes.text) + " " + str(names.text)
    health = requests.post('http://healthgen:5003/healthgen', json=character)

    return render_template('home.html', character=character, health=health.text)