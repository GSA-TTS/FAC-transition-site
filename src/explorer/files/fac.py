import os
import pyodide_http
import requests
pyodide_http.patch_all()

from api_key import FAC_API_KEY

##############################################
# This patches the FAC_API_KEY variable
# so that we can test the workbook locally.
# It will have no effect in the WWW environment.
if os.getenv("FAC_API_KEY") not in [None, ""]:
    FAC_API_KEY = os.getenv("FAC_API_KEY")

def get(endpoint, 
        params={"limit": 1}
        ):
    return requests.get(f"https://api.fac.gov/{endpoint}",
                        params = params)