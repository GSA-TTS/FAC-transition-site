---
layout: sidenav.njk
title: FAC API Example Queries
meta:
  name: FAC API Example Queries
  description: Learn how to interact with the FAC API using cURL, PowerShell, SQL, and Python.
eleventyComputed:
  eleventyNavigation:
    key: Examples
    parent: API resources
---

# FAC API Example Queries

This page provides examples of how to interact with the **FAC API** using different programming languages. In each example, you should insert [your own API key](https://api.data.gov/signup/) where the example calls for YOUR_API_KEY.

## cURL

Retrieve the first 5 audit reports using cURL.

```sh
curl -X GET "https://api.fac.gov/general?limit=5" -H "X-Api-Key: YOUR_API_KEY"
```

## **PowerShell**
Retrieve the first 5 audit reports using PowerShell:

```powershell
$API_KEY = "YOUR_API_KEY"
$BASE_URL = "https://api.fac.gov"
$URL = "$BASE_URL/general?limit=5"

$headers = @{
    "X-Api-Key" = $API_KEY
}

$response = Invoke-RestMethod -Uri $URL -Headers $headers -Method Get
$response | ConvertTo-Json -Depth 2
```

## Python: Filtering by Year and Agency

Retrieve audit reports for a specific year and specific agency (e.g., using the year 2024 and the agency code 21 for Treasury).

```python
import requests
import sys

BASE_URL = "https://api.fac.gov"
API_KEY = "YOUR_API_KEY"

def fetch_comprehensive_audits(year=2024, agency=21):

    url = (f"{BASE_URL}/general" 
        + f"?audit_year=eq.{year}"
        + f"&cognizant_agency=eq.{agency}"
        )
    headers = {"X-Api-Key": API_KEY}
    
    response = requests.get(url, headers=headers)
    
    if response.status_code == 200:
        audits = response.json()
        print(f"Found {len(audits)} audits for agency {agency} in {year}\n")

        for audit in audits:
            print("=" * 80)
            for key, value in audit.items():
                try:
                    print(f"{key}: {value}")
                except UnicodeEncodeError:
                    print(f"{key}: [Unicode Error - Unable to Display]")
        
        return audits
    else:
        print(f"Error: {response.status_code}, {response.text}")
        return []

fetch_comprehensive_audits()

```

## Python: Retrieving a Specific Report by ID

Retrieve details for a single audit report with user input of report ID.

```python
import requests
import json

BASE_URL = "https://api.fac.gov"
API_KEY = "YOUR_API_KEY"

def fetch_audit_by_id(report_id):
    url = f"{BASE_URL}/general?report_id=eq.{report_id}"
    headers = {"X-Api-Key": API_KEY}
    
    response = requests.get(url, headers=headers)
    
    if response.status_code == 200:
        audit = response.json()
        
        if audit:
            print(f"\n Audit Report Found for Report ID: {report_id}\n")
            print(json.dumps(audit, indent=4))  # Pretty-print JSON
        else:
            print(f"\n No audit report found for Report ID: {report_id}")
    else:
        print(f"\n Error {response.status_code}: {response.text}")

report_id = input("Enter the Report ID: ").strip()
fetch_audit_by_id(report_id)

```


## Python: Saving as a CSV File

Retrieve audit reports in the last 7 days and export as CSV file.

```python
import requests
import datetime
import csv

BASE_URL = "https://api.fac.gov"
API_KEY = "YOUR_API_KEY"

def fetch_audits_last_7_days(output_csv="FAC_last_7_days_audit_reports.csv"):
    # Calculate date range (last 7 days)
    today = datetime.date.today()
    past_7_days = today - datetime.timedelta(days=7)

    start_date = past_7_days.strftime("%Y-%m-%d")  # Format: YYYY-MM-DD
    end_date = today.strftime("%Y-%m-%d")

    print(f"\nSearching audits from {start_date} to {end_date} (last 7 days)...")

    fields = [
        "report_id", "auditee_uei", "audit_year", 
        "auditee_name", "auditee_state",
        "submitted_date", "total_amount_expended", 
        "audit_type"
    ]

    url = (f"{BASE_URL}/general" 
        + f"?submitted_date=gte.{start_date}"
        + f"&submitted_date=lte.{end_date}"
        + f"&select={','.join(fields)}"
        )
    headers = {"X-Api-Key": API_KEY}

    try:
        response = requests.get(url, headers=headers, timeout=10)

        if response.status_code == 200:
            audits = response.json()
            
            print(f"\nFound {len(audits)} audits submitted in the last 7 days.\n")
            
            if audits:
                
                with open(output_csv, "w", 
                    newline="", 
                    encoding="utf-8") as csv_file:
                    writer = csv.DictWriter(csv_file, fieldnames=fields)
                    writer.writeheader()
                    writer.writerows(audits)

                print(f"Data saved to {output_csv} (CSV).")

            else:
                print("No audits found in the last 7 days.")

            return audits

        else:
            print(f"\nAPI Error {response.status_code}: {response.text}")
            return []
    
    except requests.exceptions.Timeout:
        print("\nThe request timed out. Try again later.")
    except requests.exceptions.RequestException as e:
        print(f"\nAPI request failed: {e}")

fetch_audits_last_7_days()

```
---
These examples should help you get started with the FAC API. If you have any questions or need further guidance, check out the [FAC API documentation](https://www.fac.gov/api/).
