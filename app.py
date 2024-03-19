from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Thankyou for checking my repo TY!!!'