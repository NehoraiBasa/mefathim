#!/home/mefath5/.local/bin/python3

import cgi
import functions
import os
import sys
import random
import json
print("Content-Type: text/plain; \n\n")



try:
    def err():
        json_res = {"ok": False}
        print(json.dumps(json_res))
        sys.exit()

    uid=functions.get_user_id()
    sid = functions.get_cookie_value('LoggedIn')
    
    if not functions.check_logged():
        err()
    # get the users value 
    form = cgi.FieldStorage()
    old_password = form.getvalue('old_password')
    password1 = form.getvalue('password1')
    password2 = form.getvalue('password2')
    
    if old_password is None or password1 is None or password1 != password2:
        err()
       
    # check if the temporary password is true
    
    uid = functions.get_user_id()
    try:
        sql = "SELECT salt, password_hash FROM users WHERE id = '" +str(uid) + "'"
        mydb = functions.connect()
        mycursor = mydb.cursor()
        mycursor.execute(sql)
        user_details = mycursor.fetchone()
    except:
        err()

    old_salt = user_details[0]
    old_password_hash = functions.get_hash(old_password, old_salt)

    if old_password_hash == user_details[1]:

        salt = str(random.randint(1000, 9999))
        password_hash = functions.get_hash(password1, salt)

        sql = "UPDATE users SET salt = '" + salt + "', password_hash='" + password_hash + "' WHERE id = '" + str(uid) + "' "
        mycursor.execute(sql)
        mydb.commit()
        json_res = {"ok": True,}
        print(json.dumps(json_res))
               
    else:
        err()
    mydb.close()


except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)