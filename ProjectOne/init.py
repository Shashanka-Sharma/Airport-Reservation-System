

#Import Flask Library
from flask import Flask, render_template, request, session, url_for, redirect
import pymysql.cursors
# import md5hash




#Initialize the app from Flask
app = Flask(__name__)

#Configure MySQL

conn = pymysql.connect(host='localhost',
					   port = 8889,
                       user='root',
                       password='root',
                       db='airport_reservation_schema',
                       charset = 'utf8mb4',
                       cursorclass=pymysql.cursors.DictCursor)

#conn = pymysql.connect(host='192.168.64.2',
 #                      user='tommy',
  #                     password='password',
   #                    db='airport reservations',
#>>>>>>> e4c2bcde7a1f81905f1386d48376c66b32d16d33
 #                      charset='utf8mb4',
  #                     cursorclass=pymysql.cursors.DictCursor)

 #Define a route to hello function
@app.route('/')
def hello():
	# query = 'SELECT * FROM airline'
	cursor = conn.cursor()
	# conn.commit()
	cursor.execute('SELECT * FROM airline')
	data1 = cursor.fetchall()
	print(data1)
	cursor.close()
	for each in data1:
		print(each)
		print(each['name'])
	return render_template('index.html',airline = data1)
    # for each in data1:
    # 	print(each)
    #     print(each['flight'])


# @app.route('/spending.html')
# def spending():


# 	return render_template('spending.html',tickets =)


#Define route for login
@app.route('/login.html')
def login():
	return render_template('login.html')

#Define route for register
@app.route('/register.html')
def register():
	return render_template('register.html')

# Authenticates the login
@app.route('/loginAuth', methods=['GET', 'POST'])
def loginAuth():
	#grabs information from the forms
	username = request.form['username']
	password = request.form['password']

	#cursor used to send queries
	cursor = conn.cursor()
	#executes query
	query = 'SELECT * FROM customer WHERE name = %s and password = %s'
	cursor.execute(query, (username, password))
	#stores the results in a variable
	data = cursor.fetchone()
	#use fetchall() if you are expecting more than 1 data row
	cursor.close()
	error = None
	if(data):
		#creates a session for the the user
		#session is a built in
		session['name'] = username
		return redirect(url_for('home'))
	else:
		#returns an error message to the html page
		error = 'Invalid login or username'
		return render_template('login.html', error=error)

#Authenticates the register
@app.route('/registerAuth', methods=['GET', 'POST'])
def registerAuth():
	#grabs information from the forms
	cursor = conn.cursor()

	username = request.form['username']
	password = request.form['password']
	userType = request.form.get('userType')
	print(userType,"AQUI")

	md5Que = 'SELECT MD5(%s);' 
	cursor.execute(md5Que,(password))
	password = list(cursor.fetchall()[0].values())[0]
	# print(password,"WWWWWWWW")

	query = 'SELECT * FROM customer WHERE name = %s'
	cursor.execute(query, (username))
	#stores the results in a variable
	data = cursor.fetchone()
	#use fetchall() if you are expecting more than 1 data row
	error = None
	if(data):
		#If the previous query returns data, then user exists
		error = "This user already exists"
		return render_template('register.html', error = error)
	else:
		ins = 'INSERT INTO customer VALUES(%s,null, %s,null,null,null,null)' 
		cursor.execute(ins,(username, password))
		conn.commit() #commit only when changes 
		cursor.close()
		return render_template('index.html')









	# username = request.form['username']
	# password = request.form['password']
	# print("H")
	# #cursor used to send queries
	# cursor = conn.cursor()
	# #executes query
	# # query = 'SELECT * FROM customer WHERE name = %s'
	# test = 'INSERT INTO customer values ("test", "test@gmail.com", "test", "concete", "test", "test", "test")'
	# cursor.execute(test)
	# # cursor.execute(ins) 
	# #stores the results in a variable
	# data = cursor.fetchone()
	# #use fetchall() if you are expecting more than 1 data row
	# # error = None
	# # if(data):
	# # 	#If the previous query returns data, then user exists
	# # 	error = "This user already exists"
	# # 	return render_template('register.html', error = error)
	# # else:
	# # ins = 'INSERT INTO customer VALUES(%s, %s)'
	# # ins = 'INSERT INTO customer VALUES("test", "test1")'
	# # ins = 'INSERT INTO customer values ("Bob", "bob12@gmail.com", "Gorillanuggets12", "concete", "04432141", "USA", "21341332")'
	# # password = MD5(password)
	# # cursor.execute(ins) 
	# conn.commit()
	# # cursor.close()
	return render_template('index.html')

@app.route('/home')
def home():
	username = session['name']
	cursor = conn.cursor()
	# conn.commit()
	cursor.execute('SELECT * FROM airline')
	data1 = cursor.fetchall()
	print(data1)
	for each in data1:
		print(each)
		print(each['name'],"data1")

	cursor.execute('SELECT * FROM `purchase`')
	data2 = cursor.fetchall()
	print(data2,"data2")

	for each in data2:
		print(each)

	cursor.close()

	return render_template('home.html', username=username, airline=data1,tickets = data2)

		
# # @app.route('/post', methods=['GET', 'POST'])
# # def post():
# # 	username = session['username']
# # 	cursor = conn.cursor();
# # 	blog = request.form['blog']
# # 	query = 'INSERT INTO blog (blog_post, username) VALUES(%s, %s)'
# # 	cursor.execute(query, (blog, username))
# # 	conn.commit()
# # 	cursor.close()
# # 	return redirect(url_for('home'))

@app.route('/logout')
def logout():
	session.pop('name')
	return redirect('/')
		
app.secret_key = 'some key that you will never guess'
#Run the app on localhost port 6500
#debug = True -> you don't have to restart flask
#for changes to go through, TURN OFF FOR PRODUCTION
if __name__ == "__main__":
	# conn.close()
	app.run('127.0.0.1', 6500, debug = True)













# #
# var MD5 = function(d){var r = M(V(Y(X(d),8*d.length)));return r.toLowerCase()};function M(d){for(var _,m="0123456789ABCDEF",f="",r=0;r<d.length;r++)_=d.charCodeAt(r),f+=m.charAt(_>>>4&15)+m.charAt(15&_);return f}function X(d){for(var _=Array(d.length>>2),m=0;m<_.length;m++)_[m]=0;for(m=0;m<8*d.length;m+=8)_[m>>5]|=(255&d.charCodeAt(m/8))<<m%32;return _}function V(d){for(var _="",m=0;m<32*d.length;m+=8)_+=String.fromCharCode(d[m>>5]>>>m%32&255);return _}function Y(d,_){d[_>>5]|=128<<_%32,d[14+(_+64>>>9<<4)]=_;for(var m=1732584193,f=-271733879,r=-1732584194,i=271733878,n=0;n<d.length;n+=16){var h=m,t=f,g=r,e=i;f=md5_ii(f=md5_ii(f=md5_ii(f=md5_ii(f=md5_hh(f=md5_hh(f=md5_hh(f=md5_hh(f=md5_gg(f=md5_gg(f=md5_gg(f=md5_gg(f=md5_ff(f=md5_ff(f=md5_ff(f=md5_ff(f,r=md5_ff(r,i=md5_ff(i,m=md5_ff(m,f,r,i,d[n+0],7,-680876936),f,r,d[n+1],12,-389564586),m,f,d[n+2],17,606105819),i,m,d[n+3],22,-1044525330),r=md5_ff(r,i=md5_ff(i,m=md5_ff(m,f,r,i,d[n+4],7,-176418897),f,r,d[n+5],12,1200080426),m,f,d[n+6],17,-1473231341),i,m,d[n+7],22,-45705983),r=md5_ff(r,i=md5_ff(i,m=md5_ff(m,f,r,i,d[n+8],7,1770035416),f,r,d[n+9],12,-1958414417),m,f,d[n+10],17,-42063),i,m,d[n+11],22,-1990404162),r=md5_ff(r,i=md5_ff(i,m=md5_ff(m,f,r,i,d[n+12],7,1804603682),f,r,d[n+13],12,-40341101),m,f,d[n+14],17,-1502002290),i,m,d[n+15],22,1236535329),r=md5_gg(r,i=md5_gg(i,m=md5_gg(m,f,r,i,d[n+1],5,-165796510),f,r,d[n+6],9,-1069501632),m,f,d[n+11],14,643717713),i,m,d[n+0],20,-373897302),r=md5_gg(r,i=md5_gg(i,m=md5_gg(m,f,r,i,d[n+5],5,-701558691),f,r,d[n+10],9,38016083),m,f,d[n+15],14,-660478335),i,m,d[n+4],20,-405537848),r=md5_gg(r,i=md5_gg(i,m=md5_gg(m,f,r,i,d[n+9],5,568446438),f,r,d[n+14],9,-1019803690),m,f,d[n+3],14,-187363961),i,m,d[n+8],20,1163531501),r=md5_gg(r,i=md5_gg(i,m=md5_gg(m,f,r,i,d[n+13],5,-1444681467),f,r,d[n+2],9,-51403784),m,f,d[n+7],14,1735328473),i,m,d[n+12],20,-1926607734),r=md5_hh(r,i=md5_hh(i,m=md5_hh(m,f,r,i,d[n+5],4,-378558),f,r,d[n+8],11,-2022574463),m,f,d[n+11],16,1839030562),i,m,d[n+14],23,-35309556),r=md5_hh(r,i=md5_hh(i,m=md5_hh(m,f,r,i,d[n+1],4,-1530992060),f,r,d[n+4],11,1272893353),m,f,d[n+7],16,-155497632),i,m,d[n+10],23,-1094730640),r=md5_hh(r,i=md5_hh(i,m=md5_hh(m,f,r,i,d[n+13],4,681279174),f,r,d[n+0],11,-358537222),m,f,d[n+3],16,-722521979),i,m,d[n+6],23,76029189),r=md5_hh(r,i=md5_hh(i,m=md5_hh(m,f,r,i,d[n+9],4,-640364487),f,r,d[n+12],11,-421815835),m,f,d[n+15],16,530742520),i,m,d[n+2],23,-995338651),r=md5_ii(r,i=md5_ii(i,m=md5_ii(m,f,r,i,d[n+0],6,-198630844),f,r,d[n+7],10,1126891415),m,f,d[n+14],15,-1416354905),i,m,d[n+5],21,-57434055),r=md5_ii(r,i=md5_ii(i,m=md5_ii(m,f,r,i,d[n+12],6,1700485571),f,r,d[n+3],10,-1894986606),m,f,d[n+10],15,-1051523),i,m,d[n+1],21,-2054922799),r=md5_ii(r,i=md5_ii(i,m=md5_ii(m,f,r,i,d[n+8],6,1873313359),f,r,d[n+15],10,-30611744),m,f,d[n+6],15,-1560198380),i,m,d[n+13],21,1309151649),r=md5_ii(r,i=md5_ii(i,m=md5_ii(m,f,r,i,d[n+4],6,-145523070),f,r,d[n+11],10,-1120210379),m,f,d[n+2],15,718787259),i,m,d[n+9],21,-343485551),m=safe_add(m,h),f=safe_add(f,t),r=safe_add(r,g),i=safe_add(i,e)}return Array(m,f,r,i)}function md5_cmn(d,_,m,f,r,i){return safe_add(bit_rol(safe_add(safe_add(_,d),safe_add(f,i)),r),m)}function md5_ff(d,_,m,f,r,i,n){return md5_cmn(_&m|~_&f,d,_,r,i,n)}function md5_gg(d,_,m,f,r,i,n){return md5_cmn(_&f|m&~f,d,_,r,i,n)}function md5_hh(d,_,m,f,r,i,n){return md5_cmn(_^m^f,d,_,r,i,n)}function md5_ii(d,_,m,f,r,i,n){return md5_cmn(m^(_|~f),d,_,r,i,n)}function safe_add(d,_){var m=(65535&d)+(65535&_);return(d>>16)+(_>>16)+(m>>16)<<16|65535&m}function bit_rol(d,_){return d<<_|d>>>32-_}

# /** NORMAL words**/
# var value = 'test';

# var result = MD5(value);
