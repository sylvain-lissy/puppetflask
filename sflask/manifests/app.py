from flask import Flask

app = Flask(__name__)

@app.route('/sylvain')
def hello():
    return 'Sylvain was here!'


