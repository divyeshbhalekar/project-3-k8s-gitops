# from flask import Flask
# from urllib.parse import quote

# app = Flask(__name__)

# @app.route('/')
# def hello_world():
#     return 'Thank you for checking my repo TY!!!'

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, welcome to my page"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')


