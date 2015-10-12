from flask import Flask, render_template, json, request, jsonify, session, escape
from flask.ext.mysql import MySQL

app = Flask(__name__)
app.secret_key = 'F12Zr47j\3yX R~X@H!jmM]Lwf/,?KT'
  
mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = '123456'
app.config['MYSQL_DATABASE_DB'] = 'Project40k'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)


@app.route("/")
def main():
       session.pop('playername', None)
       session.pop('point', None)
       return render_template('welcome.html')
    
@app.route('/signIn',methods=['POST'])
def signIn():
    _name = request.form['txtName']
    _password = request.form['txtPassword']
    
    conn = mysql.connect()
    cursor = conn.cursor()
    
    cursor.callproc('sp_Singin',(_name,_password))
    data = cursor.fetchall()
 
    if len(data) > 0:
        session['playername'] = str(data[0]);
        session['point'] = 0;
        return json.dumps({'success':data[0]})
    else:
      
        return json.dumps({'error':data[0]})

@app.route("/game")
def game():
        name = u'asdsa';
        if 'playername' in session:
            name = 'Logged in as ' + str(session['playername'])
        else:
            name = 'You are not logged in'
        if 'point' in session:
              session['point'] = 0;
        return render_template('quiz.html', username=name)

@app.route("/getResult")
def getResult():
     name = u'asdsa';
     if 'playername' in session:
            name = str(session['playername'])
     else:
            name = 'Anonymous user'
     point= 0;
     if 'playername' in session:
            point = int(session['point'])
     return render_template('result.html', username=name, playerpoint = point) 

@app.route("/nextQuestion",methods=['GET'])
def nextQuestion():
    conn = mysql.connect()
    cursor = conn.cursor()
    quesId= request.args.get("questionId")
    opt_param = request.args.get("txtQuestionId")
    if opt_param != '' and opt_param is not None:
      questionId = opt_param;
      answer = request.args.get("ans");
      if answer == '' or answer is None:
        answer = int(0);
      cursor.callproc('compareAnswer',(int(questionId),int(answer)));
      data = cursor.fetchall();
 
      if len(data) > 0:
        session['point'] = int(session['point'] +1);

    conn = mysql.connect()
    cursor = conn.cursor()
    cursor.callproc('getQuestionById',[quesId])
    data = cursor.fetchall()
 
    return jsonify({'objects': data, 'point': session['point']})
    
if __name__ == "__main__":
    app.run(host="127.0.0.1",
            port=int("3100"))
