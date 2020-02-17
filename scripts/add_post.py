#!/home/mefath5/.local/bin/python3

import cgi, sys, codecs, os
import json
import mefath5_connect
import functions
try:
    sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())
    print ("Content-type: text/plain; charset=UTF-8\n\n")
    #print (text)
    
    def add_post():
        uid = str(functions.get_user_id())
        insert_query = "INSERT INTO posts (user_id,post_text) VALUES ('"+ uid +"','"+ text +"')"
        cursor.execute(insert_query)
        mydb.commit()

    form = cgi.FieldStorage()
    # back_color = form.getvalue('back_color')
    text = form.getvalue('text')

    # text_color = form.getvalue('text_color')
    # font_type = form.getvalue('font_type')
    # font_size = form.getvalue('font_size')

    mydb = mefath5_connect.get_connect()
    cursor = mydb.cursor()

    handler = {}
    if 'HTTP_COOKIE' in os.environ:
        cookies = os.environ['HTTP_COOKIE']
        cookies = cookies.split('; ')
    

        for cookie in cookies:
            cookie = cookie.split('=')
            handler[cookie[0]] = cookie[1]

    for k in handler:
        if k == "LoggedIn":
            sid = handler[k]
   
   
    
    add_post()

except Exception as e:
    print(e)
    exc_type, exc_obj, exc_tb = sys.exc_info()
    fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
    print(exc_type, fname, exc_tb.tb_lineno)
# print(back_color, text, text_color, font_size, font_type)
