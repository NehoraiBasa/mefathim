#!/home/mefath5/.local/bin/python3
import cgi, sys, codecs,os
import functions ,  mefath5_connect
import json
import functions

try:
    print ("Content-type: text/plain; charset=UTF-8\n\n")
    if not functions.check_logged():
        json_res = {"ok": False}
        print(json.dumps(json_res))
        exit()
    
    form = cgi.FieldStorage()
    pid = form.getvalue('post_id')
    uid = str(functions.get_user_id())
    try:
        select_query = "SELECT user_id  FROM  posts WHERE post_id = '"+pid+"'"
        mydb = mefath5_connect.get_connect()
        cursor = mydb.cursor()
        cursor.execute(select_query)
        post_uid = cursor.fetchall()
        if post_uid == uid:
            json_res = {"ok": False}
            print(json.dumps(json_res))
            exit()

        insert_query = "INSERT INTO hidden_posts (uid,pid) VALUES ('"+ uid +"','"+ pid +"')"
        # cursor = mydb.cursor() 
        cursor.execute(insert_query)
        mydb.commit() 
    
    except:
        json_res = {"ok": False}
        print(json.dumps(json_res))
        exit()

    

    json_res = {"ok": True}
    print(json.dumps(json_res))
    


except BaseException as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)