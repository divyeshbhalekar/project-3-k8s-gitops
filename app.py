from flask import Flask
from urllib.parse import quote

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Thank you for checking my repo TY!!!'
