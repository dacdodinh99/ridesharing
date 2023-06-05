import os

from flask import Flask

app = Flask(__name__)

@app.route("/api")
def hello_world():
    return "Hello, World!"

cert_path = os.environ["CERT_PATH"]
key_path = os.environ["KEY_PATH"]

app.run(host="0.0.0.0", port=5000, ssl_context=(cert_path, key_path))
