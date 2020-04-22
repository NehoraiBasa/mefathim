#!/home/mefath5/.local/bin/python3

import cgi, sys, codecs, os
import json
import mefath5_connect
import functions
import datetime
try:
    sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())
    print ("Content-type: text/plain; charset=UTF-8\n\n")

    form = cgi.FieldStorage()
    friend_id = form.getvalue('friend_id')
    uid = str(functions.get_user_id())
    
    if not functions.check_logged():
        json_res = {"ok": False}
        print(json.dumps(json_res))
        exit()
    # print (uid)
    condition="friend2='"+uid+"' AND friend1='"+friend_id+"' "
    update_query = "UPDATE friends SET status = 2 WHERE "+ condition +" AND status = 1 "
    mydb = functions.connect()
    cursor = mydb.cursor()
   

    try:
        cursor.execute(update_query)
        mydb.commit() 
    except:
        json_res = {"ok": False}
        print(json.dumps(json_res))



    

    json_res = {"ok": True}
    print(json.dumps(json_res))


except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)
# print(back_color, text, text_color, font_size, font_type)
