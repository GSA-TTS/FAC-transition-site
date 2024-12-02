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
---

# Using the FAC API

Once you have a key from [api.data.gov](https://api.data.gov/), you're ready to begin using the FAC API. 

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

*We have not tested this code under Windows. If you do, please share your experience in our [Git discussions](https://github.com/GSA-TTS/FAC/discussions).*

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