#!/home/mefath5/.local/bin/python3

import functions
import json
import os
import sys



# Note this line. It's the important one



try:
    print ("Content-type: text/plain; charset=UTF-8\n\n")
    if not functions.check_logged():
        json_res = {"ok": False}
        print(json.dumps(json_res))
        exit()

    uid = functions.get_user_id()
    sid = functions.get_cookie_value("LoggedIn")
    try:
        sql = "SELECT  is_changes FROM sessions WHERE sid = '" +sid+ "'"
        mydb = functions.connect()
        mycursor = mydb.cursor()
        mycursor.execute(sql) 
        changes = mycursor.fetchone()[0]
    except:
        print(json.dumps( {"ok": False}))
        exit()

    if changes == 1:

        update_query = "UPDATE sessions SET is_changes = '0' WHERE  sid = '" + sid + "'"
        mydb = functions.connect()
        cursor = mydb.cursor()
        cursor.execute(update_query)
        mydb.commit()
        json_res = {"ok": True,"is_changes":True}
        print(json.dumps(json_res))
        exit()
        
    else:
        json_res = {"ok": True,"is_changes":False}
        print(json.dumps(json_res))

except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)