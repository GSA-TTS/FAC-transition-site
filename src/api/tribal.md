---
layout: home.njk
title: Accessing suppressed Tribal data via the API
meta:
  name: Accessing Tribal data via the API
  description: How to access suppressed SF-SAC/SAR data.
---

# Accessing suppressed Tribal data via the API

Tribes and Tribal Organizations have the option, per [2 CFR 200.512(b)(2)](https://www.ecfr.gov/current/title-2/part-200/subpart-F#p-200.512(b)(2)), to suppress their Single Audit data.

>  Exception for Indian Tribes and Tribal Organizations.  An auditee that is an Indian tribe or a tribal organization (as defined in the Indian Self-Determination, Education and Assistance Act (ISDEAA), 25 U.S.C. 450b(l)) may opt not to authorize the FAC to make the reporting package publicly available on a Web site, by excluding the authorization for the FAC publication in the statement described in paragraph (b)(1) of this section. If this option is exercised, the auditee becomes responsible for submitting the reporting package directly to any pass-through entities through which it has received a Federal award and to pass-through entities for which the summary schedule of prior audit findings reported the status of any findings related to Federal awards that the pass-through entity provided. Unless restricted by Federal statute or regulation, if the auditee opts not to authorize publication, it must make copies of the reporting package available for public inspection.

For users of the API, this means that some Tribal records will have the field `is_public` in the `/general` endpoint set to `False`. This means the Tribe or Tribal Organization has opted to exercise its rights under the ISDEAA and UG to suppress some parts of the SF-SAC as well as the Single Audit Report.

Federal agencies engaged in oversight, who are using the API, can still access the suppressed portions of the audit. In order to do so, they will need to:

1. Request a copy of the Tribal API Access Agreement via the [helpdesk](https://support.fac.gov/hc/en-us).
2. Complete the agreement and return it to the FAC as described in the agreement.

## Working with the data

The SF-SAC data contained in the API is not "different" when using a "Tribal API key" vs. a key that grants public access. However, there are extensions to the API that are necessary to access the Single Audit Reports (SARs). It is always the case that public reports can be accessed directly, because they are public data. To access a Tribal SAR that has been suppressed, you must:

1. Make an authenticated request for a one-time access token.
2. Use the one-time token to download the PDF.

What follows are instructions for Federal developers working with Tribal data via the FAC API to access the SARs. 

## Step 1: Fetch Data About a Submission

This step retrieves data about a submission based on the provided report ID.

### Endpoint

`GET /general?report_id=eq.{report_id}`

### Parameters

* `report_id` (required): The ID of the report you want to fetch data for.

### Headers

* `content-profile`: Set to `api_v1_1_0`.
* `x-api-key`: Your Tribal API key.
* `content-type`: Set to `application/json`.

### Response

* `200 OK`: Returns JSON data containing information about the submission.
* Error Responses:
    * `404 Not Found`: If the report ID does not exist.
    * `401 Unauthorized`: If the request lacks proper authentication.

### Code

```
import requests

def fetch_submission_data(report_id):
    url = '/api.fac.gov/general?report_id=eq.{report_id}'
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        submission_data = response.json()
        return submission_data
```

## Step 2: Fetch Data About a Submission

After fetching submission data, you can request access to download the associated file.

### Endpoint

`POST /api.fac.gov/rpc/request_file_access`

### Parameters

* `report_id (required)`: The ID of the report for which you're requesting file access.

### Headers

* `content-profile`: Set to `api_v1_1_0`.
* `x-api-key`: Your Tribal API key.
* `content-type`: Set to `application/json`.

### Response

* `200 OK`: Returns access information, including an access UUID.
* Error Responses:
    * `401 Unauthorized`: If the request lacks proper authentication.
    * `404 Not Found`: If the report ID does not exist.

### Code

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

## Step 3: Download the file

Once you have the access information, you can use it to download the associated file. Use the access UUID that was retrieved in the last step to get the file.

### Endpoint:
`GET /app.fac.gov/dissemination/report/pdf/ota/{access_uuid}`

### Parameters

`access_uuid (required)`: The access UUID obtained from the request_file_access endpoint.

### Headers

None required; this is a straight `GET` request to download a file.

### Response

* `200 OK`: Downloads the file successfully.
* Error Responses:
    * `401 Unauthorized`: If the request lacks proper authentication.
    * `404 Not Found`: If the access UUID is invalid or the file doesn't exist.

Other HTTP status codes indicate various error scenarios.

### Code

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

## Notes

1. The access token is only good for 1 minute. 
2. When you access the URL at `pdf/ota/{access_uuid}`, you will be redirected to a temporary Amazon AWS URL. It, too, has a lifetime of a minute or less.

Do not bother attempting to store or cache either of these temporary URLs. Every time you want to access a PDF via the API, you will need to go through the three steps outlined above.