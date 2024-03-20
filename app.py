# from flask import Flask
# from urllib.parse import quote

# app = Flask(__name__)

# @app.route('/')
# def hello_world():
#     return 'Thank you for checking my repo TY!!!'

def generate_welcome_message():
    return "Hello, welcome to my page"

if __name__ == "__main__":
    welcome_message = generate_welcome_message()
    print(welcome_message)

