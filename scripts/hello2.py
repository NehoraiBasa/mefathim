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
    text = form.getvalue('text')
    uid = str(functions.get_user_id())
    
    if not functions.check_logged():
        json_res = {"ok": False}
        print(json.dumps(json_res))
        exit()
        
    now = datetime.datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S')

    print(now)
    print(type(now))
    insert_query = "INSERT INTO posts (user_id,post_text,write_time) VALUES ('"+ uid +"','"+ text +"','"+ now +"')"
    mydb = mefath5_connect.get_connect()
    cursor = mydb.cursor() 
    cursor.execute(insert_query)
    mydb.commit() 
    
    

    json_res = {"ok": True}
    print(json.dumps(json_res))


except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)
# print(back_color, text, text_color, font_size, font_type)
