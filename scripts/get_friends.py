#!/home/mefath5/.local/bin/python3

import functions
import json
import os
import sys
import codecs
import datetime

# Note this line. It's the important one
sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())

print("Content-Type: text/plain; charset=UTF-8\n\n")

try:
    uid=functions.get_user_id()
    sid = functions.get_cookie_value('LoggedIn')

    if not functions.check_logged():
        json_res = {"ok": False, "data": []}
        print(json.dumps(json_res, indent=4, default=str, ensure_ascii=False).encode('utf-8').decode())
        sys.exit()
    
    list_friends_query = "SELECT friend1 FROM friends WHERE   status = 2 AND  friend2 = '"+str(uid)+"' UNION SELECT friend2 FROM friends WHERE  status = 2 AND  friend1 = '"+str(uid)+"' "
    sql = "SELECT id, nickname, picture_number FROM users WHERE id  IN ("+list_friends_query+") "
    mydb = functions.connect()
    mycursor = mydb.cursor()
    mycursor.execute(sql)
    all_details = mycursor.fetchall()
    
    friend = []
    list_of_columens = [i[0] for i in mycursor.description]
    for row in all_details:
        user = {key: val for key, val in zip(list_of_columens, row)}
        friend.append(user)
   
    json_res = {"ok": True,"id":uid, "data": friend}
    print(json.dumps(json_res, indent=4, default=str, ensure_ascii=False).encode('utf-8').decode())

except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)
