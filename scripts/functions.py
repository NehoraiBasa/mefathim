#!/home/mefath5/.local/bin/python3

import mysql.connector
import os
import string
import hashlib
import random
import datetime


def get_cookie_value(key):
    handler = {}
    if 'HTTP_COOKIE' in os.environ:
        cookies = os.environ['HTTP_COOKIE']
        cookies = cookies.split('; ')

        for cookie in cookies:
            cookie = cookie.split('=')
            handler[cookie[0]] = cookie[1]
    if key in handler:
        return handler[key]
    else:
        return False


def connect():
    db = mysql.connector.connect(host="127.0.0.1",
                                 user="mefath5_dev",
                                 password="dev12345",
                                 database="mefath5_mefathim")
    return db


def update_connection(connection, sid):
    update_time = datetime.datetime.now()
    update_time = str(update_time)

    sql = "UPDATE `sessions` SET `update_time`='" + update_time + "' WHERE sid = '" + sid + "'"

    session_cursor = connection.cursor()
    session_cursor.execute(sql)

    connection.commit()


# From https://stackoverflow.com/posts/19213271/revisions
def random_sequence(size):
    chars = string.ascii_uppercase + string.ascii_lowercase + string.digits
    return ''.join(random.choice(chars) for x in range(size))


def get_hash(password, salt):
    pwd_salt = str(password) + str(salt)
    m = hashlib.sha1(pwd_salt.encode())
    return m.hexdigest()

def get_user_id():
    sid = get_cookie_value('LoggedIn')
    uid_sql = "SELECT `uid` FROM sessions WHERE sid = '" + sid + "'"
    mydb = connect()
    mycursor = mydb.cursor(uid_sql)
    mycursor.execute(uid_sql)
    return mycursor.fetchall()[0][0]


def check_logged():
    sid = get_cookie_value("LoggedIn")
    if not sid:
        return False

    db = connect()
    time_before = (datetime.datetime.now() - datetime.timedelta(minutes=10))
    sql = "SELECT `update_time`, `logged_out` FROM sessions WHERE sid = '" + sid + "'"
    session_cursor = db.cursor()
    session_cursor.execute(sql)
    session = session_cursor.fetchall()

    time, logged = session[0]
    
    if time > time_before and logged == 0:
        update_connection(db, sid)
        return True
    else:
        return False
   