---
layout: home.njk
title: Retrieving many results from the FAC API
meta:
  name: Retrieving many results from the FAC API
  description: How to use pagination
---

# Working with large result sets

The FAC API contains millions of award records. Some endpoints—such as `federal_awards` and `findings`—can return large amounts of data.

To keep the system fast and available for everyone, the FAC API enforces limits and encourages users to make efficient queries.

---

## Request limits

You can request up to **20,000 records** at a time. However, we recommend keeping queries focused and using pagination to retrieve larger sets in manageable chunks.

---

## Efficient querying strategies

Whenever possible, narrow your request by using filters like `audit_year`, `cognizant_agency`, or `auditee_state`.

Instead of pulling tens of thousands of records in one query, break your request into smaller, more specific queries. For example, fetch records week-by-week or by agency.

---

## Pagination parameters

Use the following query parameters to page through large results:

| Parameter | Description |
|-----------|-------------|
| `page` | Specifies the page number to return. Starts at 1. |
| `limit` | Number of records per page (max: 1000 per request). |
| `ordering` | Sort results by any field (e.g. `audit_year`, `auditee_state`). Use `-` prefix to reverse (e.g. `-audit_year`). |

---

## Example: retrieve awards by cognizant agency

This example shows how to retrieve `federal_awards` for a specific `cognizant_agency` in a given year by first filtering the `general` endpoint:

```python
import requests

FAC_API_BASE = "https://api.fac.gov"

def retrieve_cog_awards(year, agency_code):
    awards = []
    general_url = f"{FAC_API_BASE}/general"
    federal_awards_url = f"{FAC_API_BASE}/federal_awards"

    # Get all audit report IDs where the agency is cognizant
    general_params = {
        "audit_year": year,
        "cognizant_agency": agency_code,
        "limit": 1000,
        "page": 1
    }

    while general_params["page"]:
        response = requests.get(general_url, headers={"X-Api-Key": "YOUR_API_KEY"}, params=general_params)
        data = response.json()
        for record in data["results"]:
            report_id = record["report_id"]
            fa_response = requests.get(
                f"{federal_awards_url}?report_id={report_id}",
                headers={"X-Api-Key": "YOUR_API_KEY"}
            )
            awards.extend(fa_response.json()["results"])
        general_params["page"] += 1 if data["next"] else 0

    return awards
```

---

## Sorting results

You can sort data using the `ordering` parameter. For example:

- `?ordering=audit_year` – sorts oldest to newest
- `?ordering=-audit_year` – sorts newest to oldest

---

## Summary

- Use pagination (`page`, `limit`) for large results
- Use filters to keep queries efficient
- Use `ordering` to control sort order
- Always request manageable result sizes

Need more help? Visit [Getting Started]({{ config.baseUrl }}api/getting-started/) or check the [API Dictionary]({{ config.baseUrl }}api/dictionary/).


