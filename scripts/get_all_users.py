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

   
    # my_friends_query = "SELECT friend1 FROM friends WHERE  NOT status = 0 AND  friend2 = '"+str(uid)+"' UNION SELECT friend2 FROM friends WHERE  NOT status = 0 AND  friend1 = '"+str(uid)+"' "
    # status_query = "SELECT status FROM friends WHERE (friend1='"+str(uid)+"' AND friend2=id) OR (friend2='"+str(uid)+"' AND friend1=id) "
    # sql = "SELECT id, nickname, picture_number  FROM users WHERE id NOT IN ("+my_friends_query+") AND NOT id = '"+str(uid)+"' ORDER BY `nickname` DESC"
    # sql = "SELECT id, nickname, picture_number,friends.status FROM  friends,users WHERE id=friends.friend2 AND friends.friend2 = '"+str(uid)+"'  " 
    sql = "SELECT id, nickname, picture_number,friends.status FROM users LEFT JOIN friends\
            ON (id=friends.friend1 AND friends.friend2 = '"+str(uid)+"') OR (id=friends.friend2 AND friends.friend1 = '"+str(uid)+"')"

    mydb = functions.connect()
    mycursor = mydb.cursor()
    mycursor.execute(sql)
    all_details = mycursor.fetchall()
    
    users = []
    list_of_columens = [i[0] for i in mycursor.description]
    for row in all_details:
        user = {key: val for key, val in zip(list_of_columens, row)}
        users.append(user)
   
    json_res = {"ok": True,"id":uid, "data": users}
    print(json.dumps(json_res, indent=4, default=str, ensure_ascii=False).encode('utf-8').decode())

except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)
