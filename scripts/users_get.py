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

    time_before = (datetime.datetime.now() - datetime.timedelta(minutes=10)).strftime('%Y-%m-%d %H:%M:%S')

    sql = "SELECT id, nickname, picture_number FROM users, sessions WHERE users.id = sessions.uid AND logged_out = 0 AND update_time >= '" + time_before + "'"
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
