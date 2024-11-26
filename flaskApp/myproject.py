from flask import Flask
import pytest
app = Flask(__name__)


def add(a, b):
    return a + b

@app.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There!</h1>"

if __name__ == "__main__":
    app.run(host='0.0.0.0')