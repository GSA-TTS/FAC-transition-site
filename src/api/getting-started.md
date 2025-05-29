---
layout: home.njk
title: Using the FAC API
meta:
  name: Using the FAC API
  description: Begin using the FAC API by learning more about our endpoints and test scenarios.
eleventyComputed:
  eleventyNavigation:
    key: Getting started
    parent: API resources
in_page_nav: true
---

# Using the FAC API

To use the FAC API, you must first [sign up]({{ config.baseUrl }}api/signup/) and receive an API key from [api.data.gov](https://api.data.gov/).

---

## Environment Setup

The examples in this documentation assume you’ve set two environment variables. In a Bash shell:

```bash
export API_GOV_KEY="your-api-key"
export API_GOV_URL="https://api-staging.fac.gov"
```

These variables are used in command-line and code examples throughout the API documentation.

If you're using Windows, you can either use Windows Subsystem for Linux (WSL) or set the variables like this in Command Prompt:

```cmd
set API_GOV_KEY=your-api-key
set API_GOV_URL=https://api-staging.fac.gov
```

---

## API Endpoints

You can point `API_GOV_URL` to one of the following environments depending on your use case:

- `https://api.fac.gov` – **Production**  
  Access official, submitted data. Typically updated weekly on Wednesdays.

- `https://api-staging.fac.gov` – **Staging**  
  Contains a mix of submitted and test data. Updated daily at 5 a.m. ET.

- `https://api-dev.fac.gov` – **Development**  
  Updated with every pull request to `main`. Considered unstable.

- `https://api-preview.fac.gov` – **Preview**  
  Internal testing environment. Only use if directed by the FAC team.

---

## Testing the API

To test your setup, use the following `curl` command to request sample audit records:

```bash
curl -s -X "GET" \
     -H "X-Api-Key: ${API_GOV_KEY}" \
     "${API_GOV_URL}/general?limit=5"
```

This command returns an array of JSON objects. It's a quick way to confirm that your credentials and environment variables are working properly.

---

## Common Query Parameters

You can use these parameters with most list-based endpoints (like `/general/`, `/findings/`, etc.):

| Parameter      | Description |
|----------------|-------------|
| `page`         | The page of results to return. Defaults to 1. |
| `limit`        | The number of records per page. Maximum is 1000. |
| `ordering`     | Sort results by a specific field (e.g. `audit_year`). |
| `field=value`  | You can filter by most available fields (e.g. `auditee_state=CA`). |


