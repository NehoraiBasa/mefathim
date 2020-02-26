#!/home/mefath5/.local/bin/python3

import cgi, sys, codecs,os
import json
import mefath5_connect
import functions
try:
    sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())
    print ("Content-type: text/plain; charset=UTF-8\n\n")

    posts=[]
    
    checker = True
    
    if not functions.check_logged():
        checker= False
        json_res = {"ok": checker, "data": posts}
        print(json.dumps(json_res, indent=4, default=str, ensure_ascii=False).encode('utf-8').decode())
        exit()
    
    select_query = "SELECT nickname , post_text , write_time , post_id , user_id FROM users, posts WHERE users.id = posts.user_id AND posts.status=1 ORDER BY post_id DESC LIMIT 20 "
    mydb = mefath5_connect.get_connect()
    cursor = mydb.cursor()
    cursor.execute(select_query)
    post_data = cursor.fetchall()
    
    for x in post_data:
        if x[4]==functions.get_user_id():
            y =True
        else:
            y = False
        post = {"nickname" : x[0] , "text" : x[1] ,"writing_time": x[2],"post_id": x[3],"owner":y,}
        posts.append(post)

    json_res = {"ok": checker, "data": posts}
    print(json.dumps(json_res, indent=4, default=str, ensure_ascii=False).encode('utf-8').decode())

except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)


