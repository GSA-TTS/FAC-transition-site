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

Once you have [signed up]({{ config.baseUrl }}api/signup/) and received a key from [api.data.gov](https://api.data.gov/), you're ready to begin using the FAC API. 

The examples in this repository assume that you have two environment variables set. In a Bash shell, you would:

```
export API_GOV_KEY="..."
export API_GOV_URL="https://api-staging.fac.gov"
```

Those two environment variables must be present in your shell for the code provided to work "as is." 

If you are on Windows, you can either use the Windows Subshell for Linux (WSL) to run the code, or in a Windows command shell:

```
set API_GOV_KEY="as above..."
set API_GOV_URL="as above..."
```

## API endpoints

You can set `API_GOV_URL` to one of four URLs:

1. `api.fac.gov`: This endpoint is is for current, submitted data. Production services should use this endpoint. It is typically updated once per week on Wednesdays.
2. `api-staging.fac.gov`: This endpoint will contain a mix of submitted data as well as test data. This environment is updated daily at 5 a.m. ET.
3. `api-dev.fac.gov`: This endpoint may contain a mix of submitted and test data. Every time we accept a pull request into `main`, this environment updates. `dev` is considered unstable.
4. `api-preview.fac.gov`: This is a testing environment for our FAC developers. You shouldn't use `preview` unless asked to by the FAC team.

## Testing the API

From the command line, you should be able to use `curl` to execute a simple query against the API if everything is working:

```
curl -s -X "GET" \
     -H "X-Api-Key: ${API_GOV_KEY}" \
     "${API_GOV_URL}/general?limit=5"
```

This will return an [array of JSON objects](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/JSON). Each object will represent a row in the general information table, which roughly maps to the `gen.txt` file that Census has historically exported from their download page.

To format the results in a cleaner way, you can use `jq`:

```
curl -s -X "GET" \
     -H "X-Api-Key: ${API_GOV_KEY}" \
     "${API_GOV_URL}/general?limit=5" | jq
```

Because `jq` is a general-purpose tool for manipulating JSON, you could get a list of the report IDs that you found:

```
curl -s -X "GET" \
     -H "X-Api-Key: ${API_GOV_KEY}" \
     "${API_GOV_URL}/general?limit=5" | jq '.[] | .report_id'
```

These are examples of how to use tools like `curl` and `jq` to build automations against the FAC API. You can also use other coding languages, like Java, Python, or even Excel macros.

## Using `DEMO_KEY` for API requests

The FAC API uses API keys provided through [api.data.gov](https://api.data.gov/). For initial testing and exploration, api.data.gov provides a shared public key called `DEMO_KEY`.

`DEMO_KEY` is intentionally published for demonstration purposes. It is not a personal API credential and does not need to be kept secret.

Because `DEMO_KEY` is shared, it has much lower request limits than an individual api.data.gov key:

* 30 requests per IP address per hour
* 50 requests per IP address per day

`DEMO_KEY` is appropriate for testing a request or briefly exploring the public API. For regular API use, scripts, or applications, request your own free api.data.gov key and keep that key private.

`DEMO_KEY` provides access only to publicly available FAC data. It does not provide access to suppressed Tribal audit information. Access to suppressed Tribal data requires separate Federal authorization and the Tribal API access process.
