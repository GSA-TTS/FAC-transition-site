---
layout: home.njk
title: Accessing suppressed Tribal data via the API
meta:
  name: Accessing Tribal data via the API
  description: How to access suppressed SF-SAC data.
eleventyComputed:
  eleventyNavigation:
    key: Tribal data access
    parent: API resources
---

# Accessing suppressed Tribal data via the API

Tribes and Tribal organizations have the option, per [2 CFR 200.512(b)(2)](https://www.ecfr.gov/current/title-2/part-200/subpart-F#p-200.512(b)(2)), to suppress their Single Audit data.

For Tribes and Tribal organizations who choose to protect their data, the API will show `is_public` in the `/general` endpoint set to `False`.

If you believe you should have access to these audits, you will need to request a copy of the Tribal API Access Agreement via the [helpdesk](https://support.fac.gov/hc/en-us).

## Working with the data

Your Tribal access API key will let you request a one-time access token. You'll use this token to download suppressed reports.

Once you have your token, use the instructions below to complete your API set-up: 

### Step 1: Fetch data about a submission

This step retrieves data about a submission based on the provided report ID.

#### Endpoint

`GET /general?report_id=eq.{report_id}`

#### Parameters

* `report_id` (required): The ID of the report you want to fetch data for.

#### Headers

* `accept-profile`: Set to `api_v1_1_0`.
* `x-api-key`: Your Tribal API key.
* `content-type`: Set to `application/json`.

#### Response

* `200 OK`: Returns JSON data containing information about the submission.
* Error Responses:
    * `404 Not Found`: If the report ID does not exist.
    * `401 Unauthorized`: If the request lacks proper authentication.

#### Code

```
import requests

def fetch_submission_data(report_id):
    url = '/api.fac.gov/general?report_id=eq.{report_id}'
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        submission_data = response.json()
        return submission_data
```

### Step 2: Request file access

After fetching submission data, you can request access to download the associated file.

#### Endpoint

`POST /api.fac.gov/rpc/request_file_access`

#### Parameters

* `report_id (required)`: The ID of the report for which you're requesting file access.

#### Headers

* `content-profile`: Set to `api_v1_1_0`.
* `x-api-key`: Your Tribal API key.
* `content-type`: Set to `application/json`.

#### Response

* `200 OK`: Returns access information, including an access UUID.
* Error Responses:
    * `401 Unauthorized`: If the request lacks proper authentication.
    * `404 Not Found`: If the report ID does not exist.

#### Code

```
import json
import requests

def request_file_access(report_id):
    url = '/api.fac.gov/rpc/request_file_access'
    headers = {
        'content-Profile': 'admin_api_v1_1_0',
        'x-api-key': f'{API_KEY}',
        'Content-Type': 'application/json',
           }
    payload = json.dumps({
        "report_id": f'{report_id}'
    })
    response = requests.post(url, headers=headers, data=payload)
    if response.status_code == 200:
        access_info = response.json()
        # `access_info` is a JSON object containing
        # a one-time token needed to download a suppressed SAR.
        return access_info
```

### Step 3: Download the file

Once you have the access information, you can use it to download the associated file. Use the access UUID that was retrieved in the last step to get the file.

#### Endpoint:
`GET /app.fac.gov/dissemination/report/pdf/ota/{access_uuid}`

#### Parameters

`access_uuid (required)`: The access UUID obtained from the `/request_file_access` endpoint.

#### Headers

None required; this is a straight `GET` request to download a file.

#### Response

* `200 OK`: Downloads the file successfully.
* Error Responses:
    * `401 Unauthorized`: If the request lacks proper authentication.
    * `404 Not Found`: If the access UUID is invalid or the file doesn't exist.

Other HTTP status codes indicate various error scenarios.

#### Code

```
import requests

##############################################
# Note we download the PDF from `app.fac.gov`,
# not from `api.fac.gov`.
##############################################
def download_file(access_info):
    access_uuid_value = access_info.get('access_uuid')
    url = '/app.fac.gov/dissemination/report/pdf/ota/{access_uuid_value}'
    payload = {}
    try:
        response = requests.get(url, headers=headers, data=payload)
        if response.status_code == 200:
            with open("downloaded_file.pdf", "wb") as pdf_file:
                pdf_file.write(response.content)
            print("File downloaded successfully.")
        else:
            print("Failed to download file. Status code:", response.status_code)
            print("Response content:", response.text)
    except Exception as e:
        print("Error occurred while downloading file:", e)
```

### Notes

- The access token is only good for 1 minute. 
- When you access the URL at `pdf/ota/{access_uuid}`, you'll be redirected to a temporary Amazon AWS URL. This is also only good for 1 minute or less.

**These temporary URLs can't be stored or cached.** Every time you want to access a suppressed report via the API, you'll need to go through the steps outlined above.