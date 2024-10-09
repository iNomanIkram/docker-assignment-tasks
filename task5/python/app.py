import redis
from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def index():
    status = "Not Working"
    try:
        red = redis.Redis(
            host='redis',
            port='6379')

        red.set('mykey', 'Hello from Python!')
        value = red.get('mykey')
        status = "Working"
    except:
        print("error")

    return render_template("index.html",status=""+str(status))

if __name__ == '__main__':
   app.run(host="0.0.0.0",port=80)