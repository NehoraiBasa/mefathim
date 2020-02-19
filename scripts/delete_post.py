#!/home/mefath5/.local/bin/python3
import cgi, sys, codecs,os
import functions ,  mefath5_connect
import json


try:
    print ("Content-type: text/plain; charset=UTF-8\n\n")
    if not functions.check_logged():
        json_res = {"ok": False}
        print(json.dumps(json_res))
        exit()
    

    form = cgi.FieldStorage()
    post_id = form.getvalue('post_id')
  #  post_id=66
    uid = str(functions.get_user_id())

    update_query = "UPDATE posts SET status = '0' WHERE  post_id = '" + post_id + "'AND user_id= '" + uid + "'" 
    mydb = mefath5_connect.get_connect()
    cursor = mydb.cursor()
    cursor.execute(update_query)
    mydb.commit()





    json_res = {"ok": True}
    print(json.dumps(json_res))


except BaseException as e:
    print("location: ../change_password.html?err=1&msg="+str(e))
    print("")
    print('Failed to do something: ' + str(e))
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)