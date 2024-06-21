from datetime import datetime
import os
import requests

from libraries.findings_const import (
    FAC_API_BASE
)
import logging
logger = logging.getLogger(__name__)

API_KEY = ""
def set_api_key(key):
    global API_KEY
    API_KEY = key

def get_api_key():
    global API_KEY
    return API_KEY    

def op(op, value):
    return f"{op}.{value}"


def string_to_datetime(strdate):
    parts = strdate.split("-")
    return datetime(int(parts[0]), int(parts[1]), int(parts[2]))

def today():
    return datetime.now().strftime('%Y-%m-%d')

query_count = 0 

def get_query_count():
    global query_count
    return query_count

def fetch_from_api(table, payload):
    global query_count
    query_count += 1
    payload = payload | {"api_key": get_api_key()}

    res = requests.get(f"{FAC_API_BASE}/{table}",
                        params=payload,)
    jres = res.json()
    if len(jres) == 0:
        pass
    return jres


def rm(filename):
    try:
        os.remove(filename)
    except FileNotFoundError:
        pass

def path_based_on_ext(the_file):
    filename, file_extension = os.path.splitext(the_file)
    try:
        os.mkdir(file_extension)
    except:
        pass
    return os.path.join(file_extension[1:], f"{filename}{file_extension}")


def convert_bools(res):
    for k in res.keys():
        if res[k] in ['Y', "TRUE", "T", "YES"]:
            res[k] = True
        elif res[k] in ["N", "NO", "FALSE", "F"]:
            res[k] = False
    return res


def adjust_columns(ws):
    for col in ws.columns:
        max_length = 0
        column = col[0].column_letter # Get the column name
        for cell in col:
            try: # Necessary to avoid error on empty cells
                if len(str(cell.value)) > max_length:
                    max_length = len(str(cell.value))
            except:
                pass
        adjusted_width = (max_length + 2) * 1.2
        ws.column_dimensions[column].width = adjusted_width
    return ws

def cog_over(c, o):
    if c:
        return f"COG-{c}"
    else:
        return f"OVER-{o}"

